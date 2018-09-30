import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {

  getInitialState: function(){

    return {

          todos: ['eat', 'play ds', 'take a nap'];

    }
  },

  render() {
    return (
      <h1>John </h1>
      <h2 id="todo-list">
      <ul>
      <li>{this.state.todos[0]}</li>
        <li>{this.state.todos[1]}</li>
          <li>{this.state.todos[2]}</li>
      </ul>

    );
  }
}

export default App;
