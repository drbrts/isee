angular.module 'isee', ['ngSanitize']
  .controller 'exams', ($scope) ->
    {exams} = JSON.parse $('#js-data').get(0).innerText
    $scope.exams = exams

  .controller 'question', ($scope) ->
    {question} = JSON.parse $('#js-data').get(0).innerText
    $scope.question = question

  .controller 'strategies', ($scope) ->
    {strategies} = JSON.parse $('#js-data').get(0).innerText
    $scope.strategies = strategies

  .filter 'available', -> (available) ->
    if available is true then 'available'
    else if available is false then 'unavailable'
