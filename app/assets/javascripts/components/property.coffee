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
          return uri + hash

        init: ->
          self = this

          $('body').on 'change', '#per_page', (e) ->
            new_uri = self.updateUrlParameter(window.location.href, 'per_page', $(@).val())
            new_uri = self.updateUrlParameter(new_uri, 'page', 1)
            window.location.href = new_uri

          $('body').on 'change', '#sort_by', (e) ->
            new_uri = self.updateUrlParameter(window.location.href, 'sort_by', $(@).val())
            new_uri = self.updateUrlParameter(new_uri, 'page', 1)
            window.location.href = new_uri

          $('body').on 'click', '.js-properties-paginator a', (e) ->
            e.preventDefault()
            $.get @href, null, null, 'script'
            false

          $('.js-date').flatpickr()
        
          $('.js-enabler').on 'change', (e) ->
            p = $(@).closest('p').next()
            if $(@).is(':checked')
              p.removeClass('is-disabled')
            else
              p.addClass('is-disabled')

          return
  )
  app.init()
  return
