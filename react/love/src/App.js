import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import SearchBar from './Person/Person.js';

class App extends Component {
  render() {
    return (
      <div className="App">
          <SearchBar />
      </div>
    );
  }
}

export default App;
