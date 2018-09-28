import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <h1>John </h1>
      <h3>{this.props.name}</h3>
    );
  }
}

export default App;
