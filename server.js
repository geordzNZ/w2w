console.log('hi from server.js')

const express = require('express');
const app = express();
const expressLayouts = require('express-ejs-layouts');
const routeMain = require('./routes/main');
const knex = require('./config/database');
// const passport = require("passport");
// const session = require("express-session");
// const flash = require("express-flash");
// require('dotenv').config({ path: './config/.env' })

// require("./config/passport")(passport);

//Test DB Connection
knex('tblTest')
  .select('Comment')
  .where('Name', 'StartConn')
  .then(returnedRecords => console.log(`DB_ServerJS Says:  ${returnedRecords[0].Comment}`))
  .finally(function () { knex.destroy() })



app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(expressLayouts)
app.set('layout', './layouts/default')

// app.use(passport.initialize());
// app.use(passport.session());

// app.use(express.cookieParser('keyboard cat'));
// app.use(express.session({ cookie: { maxAge: 60000 }}));
// app.use(flash());

// Route(s)
app.use('/', routeMain)

app.listen(process.env.SERVER_PORT, ()=>{
  console.log(`PORT ${process.env.SERVER_PORT} ENGAGED  -->  Lets go get 🍕!!!!`)
})