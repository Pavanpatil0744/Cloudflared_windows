const express = require("express");
const bodyParser = require("body-parser");
const session = require("express-session");
const riak = require("riak-js").getClient({
  host: process.env.RIAK_HOST,
  port: process.env.RIAK_PORT
});

const app = express();

// Set up middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(
  session({
    secret: "your-secret-key-here",
    resave: false,
    saveUninitialized: true
  })
);

// Serve login page
app.get("/", (req, res) => {
  res.sendFile(__dirname + "/login.html");
});

// Handle login form submission
app.post("/login", (req, res) => {
  const { username, password } = req.body;

  // TODO: Implement your own authentication logic here

  // For demonstration purposes, we'll just store the username in the session
  req.session.username = username;

  res.redirect("/dashboard");
});

// Serve dashboard page
app.get("/dashboard", (req, res) => {
  const { username } = req.session;

  if (username) {
    // User is logged in, so serve dashboard page
    res.send(`Welcome, ${username}!`);
  } else {
    // User is not logged in, so redirect to login page
    res.redirect("/");
  }
});

// Start the server
app.listen(3000, () => {
  console.log("Server listening on port 3000");
});
