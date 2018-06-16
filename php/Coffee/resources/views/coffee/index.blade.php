<h2>All Coffee</h2><br>
<hr>
@foreach ($coffees as $coffee)
    <p>- Coffee Name: {{$coffee->name}} | Size: {{$coffee->size}}<a href="/coffee/{{$coffee->id}}">View</a>
      <form class="" action="/coffee/{{$coffee->id}}/delete" method="post">
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit">Delete</button>
      </form>
    </p>
@endforeach
<hr>
<a href="/coffee/create">Add new Coffee</a>
