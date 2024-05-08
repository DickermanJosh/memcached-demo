const Memcached = require('memcached');
const memcached = new Memcached('127.0.0.1:11211');
const { executeSQL } = require('./db.js');

class DAO {
    constructor() {
        this.cacheKey = 'all_content';
    }

    async showAllContentWithoutMemcached() {
        const startTime = Date.now();
        const sql = `SELECT * FROM contents ORDER BY content_id DESC`;
        const rows = await executeSQL(sql);
        const finishTime = Date.now();

        // Cache the data after fetching from the database
        return new Promise((resolve, reject) => {
            memcached.set(this.cacheKey, rows, 10 * 60, (err) => {
                if (err) {
                    reject(err);
                } else {
                    resolve({
                        timeTaken: finishTime - startTime,
                        data: rows
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
                this.clearCache().then(() => {
                    resolve({
                        timeTaken: timeTaken,
                        data: data
                    });
                }).catch(reject);
            });
        });
    }

    async clearCache() {
        return new Promise((resolve, reject) => {
            memcached.del(this.cacheKey, (err) => {
                if (err) {
                    reject(err);
                } else {
                    resolve();
                }
            });
        });
    }
}

module.exports = DAO;
