import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';

dotenv.config();

const onConnexion = new Sequelize(
    process.env.DB_NAME, 
    process.env.DB_USERNAME,
    process.env.DB_PASSWORD, 
    {
        port: process.env.DB_PORT,
        host: process.env.DB_HOST,
        dialect: process.env.DB_DIALECT
    }
);
export default onConnexion;
