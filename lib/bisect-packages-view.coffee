{View} = require 'atom'

module.exports =
class BisectPackagesView extends View
  @content: ->
    @div class: 'bisect-packages overlay from-top', =>
      @div "The BisectPackages package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "bisect-packages:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "BisectPackagesView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
