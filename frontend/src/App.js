import React, { Component } from 'react';
import './App.css';

// Components
import Information from './components/Information';
import ToolBar from './components/ToolBar';


class App extends Component {
  render() {
    return (
        <div>
        <Information />
        <ToolBar />      
        </div>
    );
  }
}

export default App;
