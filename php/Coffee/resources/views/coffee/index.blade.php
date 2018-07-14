@extends('layouts.app')
@section('content')
  <div class="container">
    <h2>Coffee Orders</h2>
    <hr>
    @foreach($coffees as $coffee)
      {{ $coffee->name }} | {{ $coffee->size }}
      <a href="/coffee/{{ $coffee->id }}">View</a> |
      <a href="/coffee/{{ $coffee->id }}/delete">Delete</a>
      <br>
    @endforeach
  </div>
@stop
