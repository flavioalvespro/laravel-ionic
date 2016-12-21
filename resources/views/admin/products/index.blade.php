@extends('app')

@section('content')

	<div class="container">
		<h3>Produtos</h3>

		<a href="{{ route('admin.products.create') }}" class="btn btn-default">Novo Produto</a>

		<br>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Produto</th>
					<th>Categoria</th>
					<th>Preço</th>
					<th>Ação</th>
				</tr>
			</thead>

			<tbody>
				@foreach($products as $p)
				<tr>
					<td>{{$p->id}}</td>
					<td>{{$p->name}}</td>
					<td>{{$p->category->name}}</td>
					<td>{{$p->price}}</td>
					<td>
						<a href="{{route('admin.products.edit', ['id'=>$p->id])}}" class="btn btn-default btn-sm">	Editar
						</a>
						<a href="{{route('admin.products.destroy', ['id'=>$p->id])}}" class="btn btn-danger btn-sm">
						  Remover
						</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

		{!! $products->render() !!}
	</div>

@endsection