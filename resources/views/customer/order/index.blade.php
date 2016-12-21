@extends('app')

@section('content')
	
	<div class="container">
		<h3>Meus pedidos</h3>

		<a href="{{route('customer.order.create')}}" class="btn btn-default">Novo Pedido</a>
		<br><br>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Total</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				@foreach($orders as $o)
				<tr>
					<td>{{$o->id}}</td>
					<td>{{$o->total}}</td>
					<td>{{$o->status}}</td>
				</tr>
				@endforeach
			</tbody>
		</table>


		{!! $orders->render() !!}
	</div>



@endsection