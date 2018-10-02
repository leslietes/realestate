$ ->
  'use strict'
  window.app = $.extend(true, window.app or {},
    init: ->
      $.each @module, (index, module) ->
        if module.init
          module.init.apply this
          module.init = false
        return

      return

    module:
      maps:
        init: ->
          self = this

          if $('#map').length
            access_token = $('#map').data('token')
            mapboxgl.accessToken = access_token
            map = new (mapboxgl.Map)(
              container: 'map'
              style: 'mapbox://styles/mapbox/streets-v9'
              center: [
                $('#map').data('lng')
                $('#map').data('lat')
              ]
              zoom: 11.15)

            marker = new (mapboxgl.Marker)(draggable: false).setLngLat([
              $('#map').data('lng')
              $('#map').data('lat')
            ]).addTo(map)

          return
  )
  app.init()
  return
