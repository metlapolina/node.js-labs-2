const Sequelize = require('sequelize');
let models = require('./models');

const sequelize = new Sequelize('node_db', 'sa', '1234', {
  host: 'localhost',
  dialect: 'mssql',
  port: '1433',
  define: {
    updatedAt: false,
    createdAt: false
  }
});

const { Faculty, Pulpit, Teacher, Subject, Auditorium_type, Auditorium } = require('./models').ORM(sequelize);

class DB {
  constructor() {
    sequelize.authenticate()
      .then(() => { console.log('---Connected---'); })
      .catch(err => { console.log('Error: connect to db', err); });
  }

  getOne(table_name) { return getClass(table_name).findAll(); }
  updateOne(table_name, body) { return getClass(table_name).update(body.update, body.where); }
  insertOne(table_name, body) { return getClass(table_name).create(body); }
  deleteOne(table_name, id) { return getClass(table_name).destroy(id); }
}

function getClass(table_name) {
  switch (table_name) {
    case 'faculty':
      return Faculty;
    case 'pulpit':
      return Pulpit;
    case 'subject':
      return Subject;
    case 'teacher':
      return Teacher;
    case 'auditorium_type':
      return Auditorium_type;
    case 'auditorium':
      return Auditorium;
  }
}

module.exports = DB;