var express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
var jsonServer = require('json-server');
var app = express();
const myPort = 8000;

var server = jsonServer.create();
server.use(jsonServer.defaults());
var router = jsonServer.router('db.json');
server.use(router);

// // // Allow cross-origin requests
// app.use(function(req, res, next) {
//   res.header('Access-Control-Allow-Origin', '*');
//   res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
//   next();
// });


app.use(cors());
app.use(express.json());



// MySQL configuration
// var connection;

// async function connectToDatabase() {
//   connection = await mysql.createConnection({
//     host: '127.0.0.1',
//     user: 'root',
//     password: 'Roman1212#',
//     database: 'cse135'
//   });
//   console.log('Connected to MySQL');
// }

// connectToDatabase().catch((err) => {
//   console.error('Error connecting to MySQL:', err);
// });

const connection = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: 'Roman1212#',
  database: 'cse135'
});

connection.getConnection((err, connection) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL database');

    // Release the connection back to the pool when finished using it
    connection.release();
  }
});




app.post('/static', (req, res) => {
  const data = req.body;
  // Insert the data into the 'static' table
  connection.query(
    'INSERT INTO static (userAgent, userLanguage, cookiesEnabled, javaScriptEnabled, imagesEnabled, cssEnabled, screenWidth, screenHeight, windowWidth, windowHeight, networkConnection) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [
      data.userAgent,
      data.userLanguage,
      data.cookiesEnabled,
      data.javaScriptEnabled,
      data.imagesEnabled,
      data.cssEnabled,
      data.screenDimensions.width,
      data.screenDimensions.height,
      data.windowDimensions.width,
      data.windowDimensions.height,
      data.networkConnection
    ],
    (error, results) => {
      if (error) {
        console.error('Error inserting data:', error);
        res.sendStatus(500);
      } else {
        console.log('Data inserted successfully');
        res.sendStatus(200);
      }
    }
  );
});

app.get('/static', async (req, res) => {
  try {
    const [results,] = await connection.query('SELECT * FROM static');
    res.json(results);
  } catch (error) {
    console.error('Error fetching data:', error);
    res.sendStatus(500);
  }
});

app.post('/performance', (req, res) => {
  const startLoading = req.body.startLoading;
  const endLoading = req.body.endLoading;
  const loadTime = req.body.loadTime;

  connection.query('INSERT INTO performance (startLoading, endLoading, loadTime) VALUES (?, ?, ?)', [startLoading, endLoading, loadTime], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).json({ status: 'error' });
    } else {
      res.status(200).json({ status: 'ok' });
    }
  });
});

app.get('/performance', async (req, res) => {
  try {
    const [results,] = await connection.query('SELECT * FROM performance');
    res.json(results);
  } catch (error) {
    console.error('Error fetching data:', error);
    res.sendStatus(500);
  }
});

server.listen(myPort, () => {
  console.log('Server started on port', myPort);
});
