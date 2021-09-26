import {TodoForm, TodoApp} from "./todos"

global css html
	ff:sans
	
let data = []

tag app
	def sendAndClear event
		let data = {"todo":event.detail}

		await window.fetch('/todos', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(data),
		})
		message = ""
		fetch()

	def fetch
		const dataFetch = await window.fetch("/todos")
		data = await dataFetch.json()
		console.log(data)

	def mount
		fetch()

	<self @clicked=sendAndClear>
		<header>
			<svg[w:200px h:auto] src='./logo.svg'>
			<p> "Edit {<code> "app/client.imba"} and save to reload"
			<a href="https://imba.io"> "Learn Imba"
			<TodoApp todos=data>
			<TodoForm>

imba.mount <app>