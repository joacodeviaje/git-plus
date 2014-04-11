{SelectListView} = require 'atom'
GitWrite = require './git-write'
GitWriteAll = GitWrite.writeAll
GitCommit = require './git-commit'

module.exports =
class CommandView extends SelectListView
  initialize: ->
    super
    @addClass('overlay from-bottom')
    atom.workspaceView.append this
    @setItems([GitWrite, GitCommit, GitWriteAll])
    @focusFilterEditor()

  getFilterKey: -> 'name'

  viewForItem: ({name}) ->
    "<li>#{name}</li>"

  confirmed: (item) ->
    item.do()
    @cancel()
