---
---
# $('a.prevent').on 'click', (e) -> e.preventDefault()
$('form.prevent').on 'submit', (e) -> e.preventDefault()
doc = $ document
body = $ body
nwo = '{{ site.github.repository_nwo }}'
token = localStorage.getItem nwo
if token
  body.addClass 'token'

# Token save
doc.on 'submit', '#token-popover', (e) ->
  e.preventDefault()
  token = $('#token-value').val()
  $.get
    url: '{{ site.github.api_url }}/user'
    headers: { 'Authorization': "token #{ token }" }
    success: (user) ->
      localStorage.setItem nwo, token
      body.addClass 'token'
      toast 'Token stored'
      return
    error: (request) ->
      if request.status is 401
        toast 'Token refused 401'
      return
  $('#token-popover')[0].hidePopover()
  return

# TOAST
toast = (string) ->
  $('#toast-container').append($('<div/>',{ text: string }))
  return
# localStorage.removeItem nwo