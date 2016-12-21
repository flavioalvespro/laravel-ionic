angular.module('starter.controllers')
.controller('ClientViewDeliveryCtrl', [
	'$scope','$stateParams','ClientOrder','$ionicLoading',function($scope,$stateParams,ClientOrder,$ionicLoading){

		$scope.order = {};
		$scope.map = {
			center: {
				latitude: -8.151896,
				longitude: -34.916241
			},
			zoom: 16
		};

		$scope.markers = [
			{
				id: 1,
				coords: {
					latitude: -8.151896,
					longitude: -34.916241
				},
				options: {
					title: 'Meu Título',
					labelContent: 'Meu Marcador',
					icon: 'http://maps.google.com/mapfiles/kml/shapes/man.png'
				}
			}
		];
		$ionicLoading.show({
			template: 'Carregando...'
		});

		ClientOrder.get({id: $stateParams.id, include: "items,cupom"},function(data){
			$scope.order = data.data;
			$ionicLoading.hide();
		},function(dataError){
			$ionicLoading.hide();
		});
	
}]);
