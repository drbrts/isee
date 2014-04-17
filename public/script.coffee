getData = (data) -> (JSON.parse $('#js-data').get(0).innerText)[data]

angular.module 'isee', ['ngSanitize']
  .controller 'exams', ($scope) ->
    $scope.exams = getData 'exams'

  .controller 'question', ($scope) ->
    $scope.question = getData 'question'

  .controller 'essay', ($scope) ->
    $scope.essay = getData 'essay'

  .controller 'strategies', ($scope) ->
    $scope.strategies = getData 'strategies'

  .controller 'sections', ($scope) ->
    $scope.sections = getData 'sections'

  .controller 'pagination', ($scope) ->
    $scope.pages = getData 'pages'

  .filter 'available', -> (available) ->
    if available is false then 'unavailable'
