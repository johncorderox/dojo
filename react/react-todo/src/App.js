import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Title from "./components/title";
import Form from "./components/form";

class App extends Component {
  render() {
    return (
      <div>
      <Title />
      <Form />
      </div>
    );
  }
}

export default App;
