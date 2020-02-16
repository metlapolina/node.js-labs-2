const db = require('./db');
const DB = new db();

module.exports = {
    get: (table_name, req, res) => {
        DB.getOne(table_name).then(results => res.json(results))
        .catch(err => {
            res.statusCode = 400;
            res.json({error: err.toString()});
        });
    },
    post: (table_name, req, res) => {
        DB.insertOne(table_name, req.body).then(results => res.json(results))
            .catch(err => {
                res.statusCode = 400;
                res.json({error: err.toString()});
            });
    },
    put: (table_name, req, res) => {
        DB.updateOne(table_name, req.body).then(results => {
            if (results[0])
                res.json(results);
            else {
                res.statusCode = 400;
                res.json({error: 'This records not founded'});
            }
        }).catch(err => {
            res.statusCode = 400;
            res.json({error: err.toString()});
        });
    },
    delete: (table_name, req, res) => {
        DB.deleteOne(table_name, req.body).then(results => {
            if (results)
                res.json(results);
            else {
                res.statusCode = 400;
                res.json({error: 'This records not founded'});
            }
        }).catch(err => {
            res.statusCode = 400;
            res.json({error: err.toString()});
        });
    }
};