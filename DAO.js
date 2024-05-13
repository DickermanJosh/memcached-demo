const Memcached = require('memcached');
const memcached = new Memcached('127.0.0.1:11211');
const { executeSQL } = require('./db.js');

class DAO {
    constructor() {
        this.cacheKey = 'all_content';
    }

    async showAllContentWithoutMemcached() {
        this.cacheKey = 'all_content';
        const startTime = Date.now();

        const results = await Promise.all([
            this.multipleJoinsOrderExample(),
            this.recursiveJoinExample(),
            this.nestedSubqueryExample(),
            this.functionConditionExample(),
            this.aggregationExample(),
        ]);

        const data = results.flat();
        const finishTime = Date.now();

        // Cache the data after fetching from the database
        return new Promise((resolve, reject) => {
            memcached.set(this.cacheKey, data, 10 * 60, (err) => {
                if (err) {
                    reject(err);
                } else {
                    resolve({
                        timeTaken: finishTime - startTime,
                        data: data
                    });
                }
            });
        });
    }

    async showAllContentWithMemcached() {
        const startTime = Date.now();
        return new Promise((resolve, reject) => {
            memcached.get(this.cacheKey, (err, data) => {
                if (err || !data) {
                    reject(err || new Error('No data in cache'));
                    return;
                }
                const endTime = Date.now();
                const timeTaken = endTime - startTime;

                // Clear the cache after retrieving the data
                /* this.clearCache().then(() => {
                }).catch(reject); */
                    resolve({
                        timeTaken: timeTaken,
                        data: data
                    });
            });
        });
    }

    async clearCache() {
        return new Promise((resolve, reject) => {
            memcached.del(this.cacheKey, (err) => {
                if (err) {
                    reject(err);
                } else {
                    this.cacheKey = 'all_content'; 
                    resolve();
                }
            });
        });
    }

    // SQL Queries
    async multipleJoinsOrderExample() {
        const sql = `
        SELECT u.name, c.content
        FROM users u
        JOIN contents c ON u.id = c.id
        JOIN contents c2 ON c.id = c2.id
        WHERE c2.content LIKE ?
        ORDER BY LENGTH(c.content) DESC;`;
        const params = ['%data%'];
        const rows = await executeSQL(sql, params);
        return rows;
    }

    async recursiveJoinExample() {
        const sql = `
        SELECT c1.content, c2.content, c3.content
        FROM contents c1
        JOIN contents c2 ON c1.id = c2.id AND c2.content_id = c1.content_id + 1
        JOIN contents c3 ON c2.id = c3.id AND c3.content_id = c2.content_id + 1
        WHERE c1.id = ?;`;
        const params = [1];
        const rows = await executeSQL(sql, params);
        return rows;
    }

    async nestedSubqueryExample() {
        const sql = `
        SELECT u.name, 
            (SELECT content FROM contents WHERE contents.id = u.id AND content_id = (
                SELECT MAX(content_id) FROM contents WHERE id = u.id)
            ) AS latest_content
        FROM users u;`;
        const rows = await executeSQL(sql);
        return rows;
    }

    async functionConditionExample() {
        const sql = `
        SELECT *
        FROM contents
        WHERE REVERSE(content) LIKE ?;`;
        const params = ['%0atad%'];
        const rows = await executeSQL(sql, params);
        return rows;
    }

    async aggregationExample() {
        const sql = `
        SELECT COUNT(id) AS count, content
        FROM contents
        WHERE content LIKE '%data%'
        GROUP BY content
        ORDER BY LENGTH(content) DESC;`;
        const rows = await executeSQL(sql);
        return rows;
    }

}

module.exports = DAO;
