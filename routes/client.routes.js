import express from 'express';
import controller from '../controller/user.controller.js';
const route = express.Router();

route
    .get('/', controller.getAll)
    .post('/login', controller.login)

export default route;
