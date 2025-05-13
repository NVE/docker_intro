const express = require('express');
const { Pool } = require('pg');

const pool = new Pool({
  user: 'myuser',
  host: 'postgres',
  database: 'mydb',
  password: 'mypassword',
  port: 5432,
});

const app = express();

app.get('/', async (req, res) => {
  try {
    const result = await pool.query('SELECT text FROM messages LIMIT 1');
    res.send(result.rows[0]?.text || 'No message found');
  } catch (err) {
    console.error('DB error:', err);
    res.status(500).send('Database error');
  }
});

app.listen(3000, () => {
  console.log('App listening on port 3000');
});
