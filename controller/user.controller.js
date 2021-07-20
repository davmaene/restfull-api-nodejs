import User from "../model/user.js"

export default {
    // function doing connection of user
    login: (req, res, next) => {
        if(!req.body.password && !req.body.phone) 
            res
            .status(401)
            .json({status: 401, message: "les parametres manquent nom ou password", content: []});

        User.findOne({
            where: {
                phone: req.body.phone,
                pwd: req.body.password
            }
        })
        .then(data => {
            if(data instanceof User) 
                res
                .status(200)
                .json({status: 200, message: "utilisateur trouvé ", content: data})
        })
        .catch(err => {
            res
            .status(505)
            .json({status: 505, message: "une erreur serveur vient de se produire", content: err});
        })
    },
    // function getting all users
    getAll: (req, res, next) => {
        User.findAll({
            where:{
                datastatus: process.env.DB_DATASTATUS
            }
        })
        .then(data => {
            res
            .status(200)
            .json({status: 200, message: "utilisateur trouvé ", content: data})
        })
        .catch(err => {
            console.log(err)
            res
            .status(500)
            .json({status: 500, message: "une erreur serveur vient de se produire", content: err})
        })
    }
}