var kfl = angular.module('kaifanla',['ngRoute']);
kfl.config(function($routeProvider){
    $routeProvider
        .when('/start',{templateUrl: 'view/start.html',controller: 'startCtrl'})
        .when('/main',{templateUrl: 'view/main.html',controller: 'mainCtrl'})
        .when('/detail/:did',{templateUrl: 'view/detail.html',controller: 'detailCtrl'})
        .when('/order/:oid',{templateUrl: 'view/order.html', controller:'orderCtrl'})
        .otherwise({redirectTo: '/start'})
})
kfl.controller('startCtrl',function($scope,$location){
    $scope.jump = function(p){
        $location.path(p);
    }
})
kfl.controller('mainCtrl', function($scope,$http,$location){
    $scope.loadMore = function(){
        var url = 'data/getdish-bypage.php?start='+$scope.dishList.length;
        console.log($scope.dishList.length)
        $http.get(url).success(function(data){
            $scope.dishList = $scope.dishList.concat(data);
            console.log($scope.dishList)
        })
    };

    $scope.dishList = [];
    var url = 'data/getdish-bypage.php?start=0';
    $http.get(url).success(function(data){
        console.log(data);
        console.log(data)
        $scope.dishList = $scope.dishList.concat(data);
    })
    $scope.jump = function(p){
        $location.path(p);
    }
})
kfl.controller('detailCtrl',function($scope, $routeParams, $http){
    //得到页面转送过来的数据，发送请求，根据不同的id获取不同的内容
     $scope.dish = {};
    var url = 'data/getdish-byid.php?id='+$routeParams.did;
    $http.get(url).success(function(data){
        $scope.dish = data;
 })
})
kfl.controller('orderCtrl',function($scope, $routeParams, $http){
    $scope.orderState = '';
    var url = 'data/order.php?oid='+$routeParams.oid;
    $http.get(url).success(function(data){
        console.log(data);
        $scope.orderState = data;
    })
})

