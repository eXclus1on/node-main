const { MongoClient } = require('mongodb');

const mongoUrl = "mongodb+srv://helder:password123!@cluster0.quextxv.mongodb.net";
const client = new MongoClient(mongoUrl);

(async function () {

    await client.connect();
    const db = client.db("sample_mflix");
    const moviesCollection = db.collection("movies");

    const moviesCursor = await moviesCollection.find(
        {
            genres: {
                $all: ["Comedy", "Action"]
            },
            year: {
                $gte: 1980,
                $lt: 1990
            }
        },
        {
            projection: { 
                _id: 0,
                title: 1,
                genres: 1,
                year: 1
            },
            // sort: {
            //     title: -1
            // }
        }
    ).sort({ title: -1 });

    while (movie = await moviesCursor.next()) {
        console.log(movie);
    }

})();

// Mostrar uma lista apenas com o titulo dos filmes que sairam em 1981
// ordenados por ordem alfabetica descendente