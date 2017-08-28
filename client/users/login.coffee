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
    name = $("#name").val()
    username = $("#username").val()
    email = $("#email").val()
    password = $("#passSignUp").val()
    if username && name && password && email
      Meteor.call "newUser", name, username, email, password, (error, result) ->
        if error
          console.log "false"
        else
          console.log "result", result

  'click #sign-up': (evt, tmpl) ->
    $(".log").hide()
    $('.social_line_wrapper').hide()
    $(".signup").show()
    $("#login").hide()
    $(".signup").show()
    $('.social_icons').hide()

  'click #log-in': (evt, tmpl) ->
    $(".log").show()
    $('.social_line_wrapper').show()
    $(".signup").hide()
    $("#login").show()
    $(".signup").hide()
    $('.social_icons').show()

  'click .fb-login': (evt, tmpl) ->
    evt.preventDefault()
    Meteor.loginWithFacebook requestPermissions: ['public_profile', 'email'], (error) ->
      if error
        console.log error
      else
        console.log Meteor.user()

  'click .gplus-login': (evt, tmpl) ->
    evt.preventDefault()
    Meteor.loginWithGoogle (error) ->
      if error
        console.log error
      else
        console.log Meteor.user()

  'click .twitter-login': (evt, tmpl) ->
    evt.preventDefault()
    Meteor.loginWithTwitter (error) ->
      if error
        console.log errror
      else
        console.log Meteor.user()
