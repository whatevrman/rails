var comicLimit = 5;
var publicAPIId =  '6e9fcb8fb21097effeedbd58bb8786f0'
var privateAPIId = '08c9a8ed60beb26c77ae803a49d6632738b6c947'
var ts= Date.now();
var hash = CryptoJS.MD5(ts+privateAPIId+publicAPIId);

var comicBooks = angular.module('ComicBooks', ['ngResource']);

comicBooks.controller("comicsController", function($scope, $http){
    $scope.comics = [];

    $scope.emptyComics = function(){
        $scope.comics.splice(0);
    };

    $scope.searchComic = function(){
        var apiTitleSearchUrl = 'http://gateway.marvel.com:80/v1/public/comics?title='+
            $scope.searchTerm+'&limit='+comicLimit+'&ts='+ts+'&apikey=6e9fcb8fb21097effeedbd58bb8786f0&hash='+hash;
        $http({
            method: 'GET',
            url: apiTitleSearchUrl
        }).then(function successCallback(response){
            $scope.addComicResults(response.data.data.results, $scope.comics);
        },function errorCallback(response){
            console.log(response);
            });
    };
    $scope.addComicResults = function(data){
        for(var i =  0, len = data.length; i < len; i++){
            var item = data[i];
            var comicLink = item.thumbnail.path + '.' + item.thumbnail.extension;
            var comic = {
                title: item.title,
                image_link: comicLink
            };
            $scope.comics.push(comic)

        }
    }
});