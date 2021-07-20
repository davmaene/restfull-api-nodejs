import Sequelize from 'sequelize';
import db from '../services/connexion.js';

const User = db.define('__tbl_users', {
    createdon: {
        type: Sequelize.STRING,
        allowNull: false
    },
    modifiedby: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    deletedby: {
        type: Sequelize.INTEGER,
        allowNull: true
    },
    datastatus: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    email: {
        type: Sequelize.STRING,
        allowNull: true
    },
    fsname: {
        type: Sequelize.INTEGER,
        allowNull: true
    },
    lsname: {
        type: Sequelize.STRING,
        allowNull: false
    },
    phone: {
        type: Sequelize.STRING,
        allowNull: false
    },
    pwd: {
        type: Sequelize.STRING,
        allowNull: true
    },
    avatar: {
        type: Sequelize.STRING,
        allowNull: true
    },
    role: {
        type: Sequelize.STRING,
        allowNull: true
    },
}, {
    timestamps: false,
    freezeTableName: true
});


export default User;