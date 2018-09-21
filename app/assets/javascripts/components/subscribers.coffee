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
      subscribers:
        init: ->

          $('#subscriber_form').on 'submit', (e) ->
            e.preventDefault()
            payload =
              subscriber:
                email: $('#subscriber_email').val()
                name: $('#subscriber_name').val()
            $.post '/subscribers.json', payload, (data) ->
              if data.success == true
                $('#subscriber_form').hide()
                $('#subs_success').html(data.message).show()
              else
                $('#subs_errors').html(data.message).show()
                

          return
  )
  app.init()
  return
