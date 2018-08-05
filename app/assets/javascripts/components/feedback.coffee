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
      feedback:
        init: ->

          $.ajaxSetup beforeSend: (xhr) ->
            token = $('meta[name="csrf-token"]').attr('content')
            xhr.setRequestHeader 'X-CSRF-Token', token
            return

          $('#feedback_form').on 'submit', (e) ->
            e.preventDefault()
            if $('#contact_property_id').length
              property_id = $('#contact_property_id').val()
            else
              property_id = ""
            payload =
              feedback:
                name: $('#contact_name').val()
                email: $('#contact_email').val()
                phone: $('#contact_phone').val()
                message: $('#contact_message').val()
                property_id: property_id
            $.post '/feedbacks.json', payload, (data) ->
              if data.success == true
                $('#feedback_form').hide()
                $('#feedback_success').show()
              else
                $('#feedback_form').hide()
                $('#feedback_errors').show()


          return
  )
  app.init()
  return
