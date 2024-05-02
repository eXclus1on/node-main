const connection = require("../db/connection");

function getRoot(req, res) {
    const data = {
        count: 3,
        products: [
            {
                title: "T-shirt",
                price: 20
            },
            {
                title: "Cap",
                price: 15
            },
            {
                title: "Sneakers",
                price: 150
            },
        ] 
    };

    res.json(data);
}

async function getCountries (req, res) {
    const [result, fields] = await connection.promise().query("SELECT * FROM country LIMIT 3");
    
    res.json(result);
}

async function getCities (req, res) {
    const [result, fields] = await connection.promise().query("SELECT * FROM city LIMIT 10");
    
    res.json(result);
}

module.exports = {
    getRoot,
    getCountries,
    getCities
}