import React, { Component } from 'react';
import './App.css';

class App extends Component {

  constructor(props) {
  super(props);
  console.log("-->"+props);

}


componentWillMount() {

  console.log("component will mount!!");
}

componentDidMount() {

  console.log("DID MOUNT!!!");
}
  render() {
    console.log("render method!!!");
    return (
      <div className="App">
        <h1>Text Word Generator</h1>
      </div>
    );
  }
}

export default App;
