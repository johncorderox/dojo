import React, { Component } from 'react';
import './App.css';

class App extends Component {

  constructor(props) {
  super(props);
  console.log("-->"+props);

}

state = {
  counter: 0
}


add = () => {

  this.setState({

     counter: this.state.counter + 1
  });

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
        <h1>To Do List</h1>
        <form onSubmit={}>
        <input type="text" />
        <button type="submit">Add</button>
        </form>
      </div>
    );
  }
}

export default App;
