Template.login.rendered = ->
		$(document).ready ->
      $('.popup-with-zoom-anim').magnificPopup
        type: 'inline'
        fixedContentPos: false
        fixedBgPos: true
        overflowY: 'auto'
        closeBtnInside: true
        preloader: false
        midClick: true
        removalDelay: 300
        mainClass: 'my-mfp-zoom-in'

Template.login.events
  'click #logIn': (evt, tmpl) ->
    evt.preventDefault()
    username = $("#user").val()
    password = $("#password").val()
    if username && password
      Meteor.loginWithPassword username, password, (error, result) ->
        if error
          console.log "error"
        else
          console.log "logged in"

  'click #signUp': (evt, tmpl) ->
    evt.preventDefault()
    console.log "Sign up"
    name = $("#name}").val()
    username = $("#username").val()
    email = $("#email").val()
    password = $("#passSignUp").val()
    console.log name, username, email, password
    if username && name && password && email
      Meteor.call "newUser", name, username, email, password, (error, result) ->
        if error
          console.log "false"
        else
          console.log "result", result
