import React, { Component } from 'react';
import './Person.css';

class SearchBar extends Component {

  constructor(props) {

    super(props);

    this.state = {term: ''};
  }

  render() {
    return  (

      <div>
      <input
      value={this.state.term}
      onChange={event => this.setState({ term: event.target.value})} />
      Value of Input:{this.state.term}
      </div>
    )

  }
}


export default SearchBar;
