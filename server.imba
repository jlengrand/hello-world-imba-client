import express from 'express'
import index from './app/index.html'

const app = express!

app.use(express.json())

let todos = []

app.post("/todos") do(req,res)
	console.log(req.body)
	todos.push(req.body.todo)
	console.log(todos)
	res.sendStatus(200)

app.get("/todos") do(req, res)
	res.json(todos) 

# catch-all route that returns our index.html
app.get(/.*/) do(req,res)
	# only render the html for requests that prefer an html response
	unless req.accepts(['image/*', 'html']) == 'html'
		return res.sendStatus(404)
	res.send index.body

imba.serve app.listen(process.env.PORT or 3000)