GitCommit = require './git-commit'
GitWrite = require './git-write'
BranchView = require './branch-view'

module.exports =
  branchView: null

  activate: (state) ->
    atom.workspaceView.command "git-plus:commit", -> GitCommit.do()
    atom.workspaceView.command "git-plus:write", -> GitWrite.do()
    atom.workspaceView.command "git-plus:write-all", -> GitWrite.do(true)
    atom.workspaceView.command 'git-plus:show', => @show()

  show: ->
    @branchView = new BranchView()

  deactivate: ->

  serialize: ->
