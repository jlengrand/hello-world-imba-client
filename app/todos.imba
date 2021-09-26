tag todo-item
	prop data
	<self>
		<p> data

export tag TodoApp
	css margin-top: 20px mb: 20px
	prop todos
	<self> for todo in todos
		<todo-item data=todo>

export tag TodoForm
	css button background:#b2f5ea 
	css button@hover background:#e76f51 

	prop message
	<self> 
		<input type='text' bind=message>
		<button @click=emit("clicked", message)> 'Add TODO'
