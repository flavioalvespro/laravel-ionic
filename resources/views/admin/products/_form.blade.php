<div class="form-group">
	<label>Categoria:</label>
	<select name="category_id" class="form-control">
		@foreach($categories as $c)
			<option value="{{$c->id}}">{{$c->name}}</option>
		@endforeach
	</select>
</div>

<div class="form-group">
	{!! Form::label('Name', 'Nome:') !!}
	{!! Form::text('name', null, ['class'=>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('Description', 'Descrição:') !!}
	{!! Form::textarea('description', null, ['class'=>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('Price', 'Preço:') !!}
	{!! Form::text('price', null, ['class'=>'form-control']) !!}
</div>