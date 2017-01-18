HomeRoute   = require './home/route'
UploadRoute = require './upload/route'

# # # # #

# HomeRouter class definition
class HomeRouter extends require '../base/router'

  routes:
    '(/)':        'home'
    'upload(/)':  'upload'

  home: ->
    new HomeRoute({ container: @container })

  upload: ->
    new UploadRoute({ container: @container })

# # # # #

module.exports = new HomeRouter({ container: window.Layout.mainRegion })
