@extends('app')

@section('content')

	<div class="container">
		<h3>Clientes</h3>

		<a href="{{ route('admin.clients.create') }}" class="btn btn-default">Novo Cliente</a>

		<br>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Ação</th>
				</tr>
			</thead>

			<tbody>
				@foreach($clients as $c)
				<tr>
					<td>{{$c->id}}</td>
					<td>{{$c->user->name}}</td>
					<td>
						<a href="{{route('admin.clients.edit', ['id'=>$c->id])}}" class="btn btn-default btn-sm">Editar</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

		{!! $clients->render() !!}
	</div>

@endsection