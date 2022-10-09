const express = require('express')
const app = express()
const port = 3000

const snacks = [
  {name: "Chips", sweat_or_salty: "salty"},
  {name: "Brownie", sweat_or_salty: "sweet"},
  {name: "Waffle", sweat_or_salty: "sweet"},
  {name: "Sausage", sweat_or_salty: "salty"},
  {name: "Bread", sweat_or_salty: "salty"},
]
app.use(express.static('public'))

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html')
})

app.get('/Snacks/:id', (req, res) => {
  res.json(snacks[parseInt(req.params.id) - 1])
})

app.listen(port, function() {
  console.log("Example app listening on port 3000 !")
})