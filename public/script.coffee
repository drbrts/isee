angular.module 'exams', []
  .controller 'exam', ($scope) ->
    data = JSON.parse $('#js-data').get(0).innerText
    $scope.exams = data.exams

  .filter 'active', -> (active) ->
    console.log active
    switch active
      when active is true then 'active'
      when active is false then console.log 'i am here'; 'inactive'
      else ''
