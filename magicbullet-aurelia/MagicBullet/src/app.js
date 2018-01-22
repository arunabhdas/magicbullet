import {Todo} from './todo';

export class App {


  constructor() {
    this.heading = 'Todos';
    this.todos = [];
    this.todoDescription = '';

  }


  configureRouter(config, router) {
  	config.title = 'Items'
  	config.map([
  			{route : '', moduleId: 'no-selection', title: 'Select'},
  			{route: 'contacts/:id', moduleId: 'contact-detail', name: 'contacts'}
  		]);
  	this.router = router;
  }

  addTodo() {
  	if (this.todoDescription) {
  		this.todos.push(new Todo(this.todoDescription));
  		this.todoDescription = '';
  	}
  }

  removeTodo(todo) {
  	let index = this.todos.indexOf(todo);
  	if (index !== -1) {
  		this.todos.splice(index, 1);
  	}
  }
}
