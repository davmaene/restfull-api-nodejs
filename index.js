'use strict';

import express from 'express'
import http from 'http';
import dotenv from 'dotenv';
const app = express();
const server = http.createServer(app);
import onConnexion from './services/connexion.js';
import { Server } from "socket.io";
import router from './routes/index.js';
const io = new Server(server);

dotenv.config();
const PORT = process.env.PORT || 3000;

const initDB = () => {
    try {
        onConnexion.authenticate();
        console.log(`Connection à la base de données :: ${process.env.DB_NAME} a réussie !`)
    } catch (error) {
        console.log(`Une erreur vient de se produire lors de la connection à la base de données :: ${process.env.DB_NAME}`)
        console.error(error)
    }
};

app.use(express.urlencoded({extended:true}));
app.use(express.json());
app.use('/api', router);
app.get('/', (req, res) => {
    res
    .status(200)
    .json({status: 200, message: "Welcome ms-transpay API"})
});
app.use((req, res, next) => {
    res
    .status(404)
    .json({status: 404, message: "Il n'y a aucune route trouvé "})
    next()
});
initDB();

server.listen(PORT, () => {
    console.log(`ms-transpay is running on port ::: ${PORT}`)
});