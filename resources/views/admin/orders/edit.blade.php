@extends('app')

@section('content')

	<div class="container">
		<h2>Pedido: {{$order->id}} - R$ {{$order->total}}</h2>
		<h3>Cliente: {{$order->client->user->name}}</h3>
		<h4>Data: {{$order->created_at}}</h4>

		@include('errors._check')

		<p><b>Entregar em: </b><br>
			{{$order->client->address}} - {{$order->client->city}} - {{$order->client->state}} 
		</p>

		{!! Form::model($order, ['route'=>['admin.orders.update', $order->id]]) !!}
			<div class="form-group">
				<label>Status:</label>
				<select name="status" class="form-control">
					@foreach($list_status as $s)
						@if($s == 'Pendente')
							<option value="{{0}}">{{$s}}</option>
						@elseif($s == 'A Caminho')
							<option value="{{1}}">{{$s}}</option>
						@elseif($s == 'Entregue')
							<option value="{{2}}">{{$s}}</option>
						@endif
					@endforeach
				</select>
			</div>

			<div class="form-group">
				<label>Emtregador:</label>
				<select name="user_deliveryman_id" class="form-control">
					@foreach($deliveryman as $d)
						<option value="{{$d->id}}">{{$d->name}}</option>
					@endforeach
				</select>
			</div>

			<div class="form-group">
				{!! Form::submit('Salvar', ['class'=>'btn btn-primary']) !!}
			</div>

		{!! Form::close() !!}
		
	</div>

@endsection