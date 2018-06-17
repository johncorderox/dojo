<br><br><br><meta name="csrf-token" content="{{ csrf_token() }}" />
<a href="/coffee">View All Coffee</a>
<hr>
@if(count($errors) > 0)
  <div>
    <ul>
      @foreach($errors->all() as $error)
        {{ $error }}

      @endforeach
    </ul>
  </div>

@endif
{!!Form::open(['method'=>'POST', 'action'=>'CoffeeController@store', 'files'=>true])!!}

{!! Form::file('file', null) !!}
{!! Form::label('name', 'Name: ') !!}
{!! Form::text('name', null) !!}
{!! Form::label('size', 'Size: ') !!}
{!! Form::text('size', null) !!}
{!! Form::submit('New Coffee')!!}
{!! Form::close()!!}
