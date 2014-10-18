BisectPackagesView = require './bisect-packages-view'

module.exports =
  bisectPackagesView: null

  activate: (state) ->
    @bisectPackagesView = new BisectPackagesView(state.bisectPackagesViewState)

  deactivate: ->
    @bisectPackagesView.destroy()

  serialize: ->
    bisectPackagesViewState: @bisectPackagesView.serialize()
