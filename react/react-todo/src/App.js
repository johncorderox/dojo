import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Title from "./components/title";
import Form from "./components/form";
import Weather from "./components/weather";

const API_KEY = "7aca813d793071de1e6bdf8c3d3a0234";


class App extends Component {

  state = {
    temperature: undefined,
    city: undefined,
    country: undefined,
    humidity: undefined,
    description: undefined,
    error: undefined
  };

  getWeather = async (e) => {

  e.preventDefault();

  const city = e.target.elements.city.value;
  const country = e.target.elements.country.value;

  const api_call = await fetch(`http://api.openweathermap.org/data/2.5/weather?q=${city},${country}&appid=${API_KEY}&units=metric`);

  const data = await api_call.json();


  this.setState({
    temperature: data.main.temp,
    city: data.name,
    country: data.sys.country,
    humidity: data.main.humidity,
    description: data.weather[0].description,
    error: ""
  });
}


  render() {
    return (
      <div>
      <Title />
      <Form getWeather={this.getWeather}/>
      <Weather
      temperature={this.state.temperature}
      city={this.state.city}
      country={this.state.country}
      humidity={this.state.humidity}
      description={this.state.description}
      error={this.state.error}
      />
      </div>
    );
  }
}

export default App;
