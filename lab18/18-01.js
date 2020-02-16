const express = require('express');
const handler = require('./handler');
const bodyParser = require('body-parser');
const app = express();
app.use(bodyParser.json());

app.get('/', (req, res) => { res.sendFile(__dirname + '/file.html'); });
app.get('/api/:table', (req, res) => { handler.get(req.params.table, req, res); });
app.post('/api/:table', (req, res) => { handler.post(req.params.table, req, res); });
app.put('/api/:table', (req, res) => { handler.put(req.params.table, req, res); });
app.delete('/api/:table', (req, res) => { handler.delete(req.params.table, req, res); });

app.listen(3000, () =>{console.log(`Listening on http://localhost:3000`);})
   .on('error', (e) => {console.log(`Error: ${e.code}`)});