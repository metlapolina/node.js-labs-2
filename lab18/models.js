const Sequelize = require('sequelize');
const Model = Sequelize.Model;

class Faculty extends Model { };
class Pulpit extends Model { };
class Teacher extends Model { };
class Subject extends Model { };
class Auditorium_type extends Model { };
class Auditorium extends Model { };

function internalORM(sequelize) {
    Faculty.init(
        {
            faculty: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            faculty_name: { type: Sequelize.STRING }
        }, {
        sequelize,
        modelName: 'faculty',
        tableName: 'faculty'
        }
    )

    Pulpit.init(
        {
            pulpit: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            pulpit_name: { type: Sequelize.STRING },
            faculty:{type:Sequelize.STRING, allowNull:false,
            references:{model:Faculty, key:'faculty'}}
        }, {
        sequelize,
        modelName: 'pulpit',
        tableName: 'pulpit'
        }
    )

    Teacher.init(
        {
            teacher: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            teacher_name: { type: Sequelize.STRING },
            pulpit:{type:Sequelize.STRING, allowNull:false,
                references:{model:Pulpit, key:'pulpit'}}
        }, {
        sequelize,
        modelName: 'teacher',
        tableName: 'teacher'
        }
    )

    Subject.init(
        {
            subject: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            subject_name: { type: Sequelize.STRING },
            pulpit:{type:Sequelize.STRING, allowNull:false,
                references:{model:Pulpit, key:'pulpit'}}
        }, {
        sequelize,
        modelName: 'subject',
        tableName: 'subject'
        }
    )

    Auditorium_type.init(
        {
            auditorium_type: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            auditorium_typename: { type: Sequelize.STRING }
        }, {
        sequelize,
        modelName: 'auditorium_type',
        tableName: 'auditorium_type'
        }
    )

    Auditorium.init(
        {
            auditorium: { type: Sequelize.STRING, allowNull: false, primaryKey: true },
            auditorium_name: { type: Sequelize.STRING },
            auditorium_capacity: { type: Sequelize.INTEGER },
            auditorium_type: { type: Sequelize.STRING, allowNull: false,
            references:{model:Auditorium, key:'auditorium'} }
        }, {
        sequelize,
        modelName: 'auditorium',
        tableName: 'auditorium'
        }
    )
}

exports.ORM = (s)=>{
    internalORM(s);
    return{
        Faculty,
        Pulpit,
        Teacher,
        Subject,
        Auditorium_type,
        Auditorium
    }
}