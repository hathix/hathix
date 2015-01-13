---
---

angular.module('hathixApp')
    .controller "PortfolioCtrl", ($scope) ->
        $('[data-toggle="tooltip"]').tooltip()

        # filter by technology used
        $scope.filter = null
        $scope.isFilterActive = (filterName) ->
            $scope.filter == filterName
        $scope.toggleFilter = (filterName) ->
            if $scope.isFilterActive filterName
                $scope.filter = null
            else
                $scope.filter = filterName

            ###
            # We should update which project is shown
            newFirstProject = $('#project-list').children(':not(.ng-hide)').data('project-name')
            console.log newFirstProject
            $scope.showProject newFirstProject
            ###

        # show a project's info page
        $scope.project = null
        $scope.isProjectActive = (projectName) ->
            $scope.project == projectName
        $scope.showProject = (projectName) ->
            $scope.project = projectName

        # Given a list of technologies separated by some character,
        # determines if the project should be shown given the current filter
        $scope.shouldShowProject = (technologiesString) ->
            if not $scope.filter? then return true
            return technologiesString.indexOf($scope.filter) >= 0
