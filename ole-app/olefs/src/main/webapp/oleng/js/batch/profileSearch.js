/**
 * Created by SheikS on 12/16/2015.
 */

var batchProfileSearchApp = angular.module('batchProfileSearchApp', ['ngLoadingSpinner','datatables']);

batchProfileSearchApp.controller('batchProfileSearchController', ['$scope','searchProfile','$http', function($scope,searchProfile,$http){

    $scope.profiles = [];
    $scope.profileTypes = BATCH_CONSTANTS.PROFILE_TYPES;

    var url = OLENG_CONSTANTS.PROFILE_SEARCH;
    $scope.search = function(){
        $scope.profiles = [];
        var profileName = $scope.profileName;
        var profileType = $scope.profileType;
        searchProfile.searchProfile($scope,profileName, profileType, url);
    };

    $scope.showModal = false;
    $scope.profileInquiry = function(profileId){
        $scope.showModal = !$scope.showModal;
    };
    $scope.closeModal = function(){
        $scope.showModal = false;
    };

    $scope.exportProfile = function (profileId) {
        var blob = new Blob([$scope.profiles[profileId].content], {
            type: "application/json;charset=utf-8"
        });
        saveAs(blob, $scope.profiles[profileId].profileName + ".txt");
    };

    $scope.deleteProfile = function (profileId,index) {
        var data = {};
        data["profileId"] = profileId;
        doPostRequest($scope, $http, OLENG_CONSTANTS.PROFILE_DELETE, JSON.stringify(data), function (response) {
                $scope.profiles.splice(index, 1);
            });
    };

}]);



batchProfileSearchApp.service('searchProfile', ['$http', function ($http) {
    this.searchProfile = function($scope,profileName,profileType, uploadUrl){
        var data = {};
        data["profileName"] = profileName;
        data["profileType"] = profileType;
        doPostRequest($scope, $http, uploadUrl, JSON.stringify(data), function(response){
                var data = response.data;
                var profiles = JSON.stringify(data) ;
                var log = [];
                angular.forEach(data, function(value, key) {
                    $scope.profiles.push(value);
                }, log);
            });
    }
}]);

batchProfileSearchApp.directive('modal', function () {
    return {
        template: '<div class="modal fade">' +
        '<div class="modal-dialog">' +
        '<div class="modal-content">' +
        '<div class="modal-header">' +
        '<button type="button" class="close" data-dismiss="modal" aria-hidden="true" ng-click="closeModal()">&times;</button>' +
        '<h4 class="modal-title">{{ title }}</h4>' +
        '</div>' +
        '<div class="modal-body" ng-transclude></div>' +
        '</div>' +
        '</div>' +
        '</div>',
        restrict: 'E',
        transclude: true,
        replace:true,
        scope:true,
        link: function postLink(scope, element, attrs) {
            scope.title = attrs.title;

            scope.$watch(attrs.visible, function(value){
                if(value == true)
                    $(element).modal('show');
                else
                    $(element).modal('hide');
            });

            $(element).on('shown.bs.modal', function(){
                scope.$apply(function(){
                    scope.$parent[attrs.visible] = true;
                });
            });

            $(element).on('hidden.bs.modal', function(){
                scope.$apply(function(){
                    scope.$parent[attrs.visible] = false;
                });
            });
        }
    };
});
