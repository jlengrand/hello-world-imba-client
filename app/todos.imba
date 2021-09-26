tag todo-item
	prop data
	<self>
		<p> data

export tag TodoApp
	prop todos
	<self> for todo in todos
		<todo-item data=todo>

export tag TodoForm
	prop message
	<self> 
		<input type='text' bind=message>
		<button @click=emit("clicked", message)> 'Add TODO'
