console.log('hi from server.js')



//Test DB Connection



// Setup stuff
app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(expressLayouts)
app.set('layout', './layouts/default')



// Route(s)
app.use('/', routeMain)

app.listen(process.env.SERVER_PORT, ()=>{
  console.log(`PORT ${process.env.SERVER_PORT} ENGAGED  -->  Lets go get 🍕!!!!`)
})