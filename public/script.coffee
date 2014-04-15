getData = (data) -> (JSON.parse $('#js-data').get(0).innerText)[data]

angular.module 'isee', ['ngSanitize']
  .controller 'exams', ($scope) ->
    $scope.exams = getData 'exams'

  .controller 'question', ($scope) ->
    $scope.question = getData 'question'

  .controller 'strategies', ($scope) ->
    $scope.strategies = getData 'strategies'

  .controller 'sections', ($scope) ->
    $scope.sections = getData 'sections'

  .filter 'available', -> (available) ->
    if available is false then 'unavailable'
