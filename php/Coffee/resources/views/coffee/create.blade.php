@extends('layouts.app')
@section('content')
<div class="container">
  <h2>Create New Coffee</h2>
  <hr><br>

  {!!Form::open( ['url' => '/coffee', 'method' => 'post'] ) !!}
  {!! Form::token() !!}
  {!! Form::label('name', 'Coffee Name: ') !!}
  {!! Form::text('name', null, ['class'=>'form-control']) !!} <br>
  {!! Form::label('size', 'Size: ') !!}
  {!! Form::text('size', null, ['class'=>'form-control']) !!}<br>
  {!! Form::label('instructions', 'Instructions: ')!!}<br>
  {!! Form::textarea('instructions', null, ['class'=>'form-control'])!!}<br>
  {!! Form::submit('New Coffee', ['class'=>'btn btn-primary'])!!}
  {!! Form::close()!!}

</div>
@stop
