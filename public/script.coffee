angular.module 'exams', []
  .controller 'exam', ($scope) ->
    {exams} = JSON.parse $('#js-data').get(0).innerText
    $scope.exams = exams

  .filter 'active', -> (active) ->
    if active is true then 'active'
    else if active is false then 'inactive'

angular.module 'questions', ['ngSanitize']
  .controller 'question', ($scope) ->
    {question} = JSON.parse $('#js-data').get(0).innerText
    $scope.question = question
