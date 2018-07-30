import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import SearchBar from './Person/Person.js';
import YTSearch from 'youtube-api-search';
import VideoList from './Person/video_list.js';

const API_KEY = 'AIzaSyCUYYnEaa5lstrtv17J9btZX8lAgVqAtE8';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = { videos: [] };
    YTSearch({key: API_KEY, term: 'Beach house album'}, (videos) => {
      this.setState({ videos });
    });
  }
  render() {
    return (
      <div>
        <SearchBar />
        <VideoList videos={this.state.videos} />
      </div>
    );
  }
}

export default App;
