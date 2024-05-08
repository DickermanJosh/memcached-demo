const Memcached = require('memcached');
const memcached = new Memcached('localhost:11211');
const { executeSQL } = require('./db.js');

class DAO {
    async showAllContentWithoutMemcached() {
        const startTime = Date.now();
        const sql = `SELECT * FROM content ORDER BY content_id DESC`;
        const rows = await executeSQL(sql);
        const finishTime = Date.now();

        // Cache the content after for the comparisson in the next function call
        memcached.set(this.cacheKey, rows, 10 * 60, (err) => { // Cache for 10 minutes
            if (err) return reject(err);
            resolve({
                fromCache: false,
                data: rows,
            });
        });
        return {
            data: rows,
            timeTaken: finishTime - startTime
        }
    }

    async clearCache() {
        return new Promise((resolve, reject) => {
            memcached.del(this.cacheKey, (err, result) => {
                if (err) return reject(err);
                resolve(result);
            });
        });
    }

  async showAllContentWithMemcached() {
        const startTime = Date.now();
        return new Promise((resolve, reject) => {
            memcached.get(this.cacheKey, async (err, data) => {
                if (!data || err) {
                    return { isCached: false }
                }

                const endTime = Date.now();
                resolve({
                    fromCache: true,
                    data: data,
                    timeTaken: endTime - startTime,
                    isCached: true
                });
                await clearCache()
            });
        });
    }
}

module.exports = DAO;

