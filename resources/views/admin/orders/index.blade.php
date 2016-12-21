@extends('app')

@section('content')

	<div class="container">
		<h3>Pedidos</h3>

		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Total</th>
					<th>Data</th>
					<th>Itens</th>
					<th>Entregador</th>
					<th>Status</th>
					<th>Ação</th>
				</tr>
			</thead>

			<tbody>
				@foreach($orders as $o)
				<tr>
					<td>{{$o->id}}</td>
					<td>R$ {{$o->total}}</td>
					<td>{{$o->created_at}}</td>
					<td>
						<ul>
						@foreach($o->items as $i)
							<li>{{$i->product->name}}</li>
						@endforeach
						</ul>
					</td>
					<td>{{$o->deliveryman->name}}</td>
					<td>{{$o->status}}</td>
					<td>
						<a href="{{route('admin.orders.edit', ['id'=>$o->id])}}" class="btn btn-default btn-sm">Editar</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>

		{!! $orders->render() !!}
	</div>

@endsection