GitCommit = require './git-commit'
GitWrite = require './git-write'
CommandView = require './command-view'

module.exports =
  activate: (state) ->
    atom.workspaceView.command "git-plus:commit", -> GitCommit.do()
    atom.workspaceView.command "git-plus:write", -> GitWrite.do()
    atom.workspaceView.command "git-plus:write-all", -> GitWrite.do(true)
    atom.workspaceView.command 'git-plus:show', -> new CommandView()

  deactivate: ->

  serialize: ->
