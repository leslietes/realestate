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
      property:
        updateUrlParameter: (uri, key, value) ->
          i = uri.indexOf('#')
          hash = if i == -1 then '' else uri.substr(i)
          uri = if i == -1 then uri else uri.substr(0, i)
          re = new RegExp('([?&])' + key + '=.*?(&|$)', 'i')
          separator = if uri.indexOf('?') != -1 then '&' else '?'
          if uri.match(re)
            uri = uri.replace(re, '$1' + key + '=' + value + '$2')
          else
            uri = uri + separator + key + '=' + value
          uri + hash

        init: ->
          self = this

          $('body').on 'change', '#per_page', (e) ->
            new_uri = self.updateUrlParameter(window.location.href, 'per_page', $(@).val())
            window.location.href = new_uri

          $('body').on 'change', '#sort_by', (e) ->
            new_uri = self.updateUrlParameter(window.location.href, 'sort_by', $(@).val())
            window.location.href = new_uri

          if $('#property_page').length

            mapboxgl.accessToken = 'pk.eyJ1Ijoic2tpcGZpc2giLCJhIjoiY2prdW85Y2hmMDBoMjNwbzh4ZzQ2ZHJ1aCJ9.jwkFDUKT4UKlrGSziLNTRw'
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
