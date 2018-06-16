<br><br><br><meta name="csrf-token" content="{{ csrf_token() }}" />
<a href="/coffee">View All Coffee</a>
{!!Form::open(['method'=>'POST', 'action'=>'CoffeeController@store'])!!}

{!! Form::label('name', 'Name: ') !!}
{!! Form::text('name', null) !!}
{!! Form::label('size', 'Size: ') !!}
{!! Form::text('size', null) !!}
{!! Form::submit('New Coffee')!!}
{!! Form::close()!!}
