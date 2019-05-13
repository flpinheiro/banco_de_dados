const bodyParser = require('body-parser') /*bodyParser aplicando middleware json*/
const cors = require('cors') /*cors permite o acesso da api atravez de uma outra aplicação */

module.exports = app => {
    app.use(bodyParser.json())
    app.use(cors())
}