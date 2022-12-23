console.log('hi from server.js')



//Test DB Connection



// Setup stuff




// Route(s)
//app.use('/', routeMain)

app.listen(process.env.SERVER_PORT, ()=>{
  console.log(`PORT ${process.env.SERVER_PORT} ENGAGED  -->  Lets go get 🍕!!!!`)
})