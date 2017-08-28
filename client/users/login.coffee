Template.login.rendered = ->
  Meteor.subscribe "users"

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
    evt.preventDefault()
    $(".log").hide()
    $('.social_line_wrapper').hide()
    $(".signup").show()
    $(".signup").show()
    $("#login").hide()
    $('.social_icons').hide()

  'click #log-in': (evt, tmpl) ->
    evt.preventDefault()
    $(".log").show()
    $('.social_line_wrapper').show()
    $(".signup").hide()
    $("#login").show()
    $(".signup").hide()
    $('.social_icons').show()
    $('.forgot_pass').hide()

  'click #forgotpass': (evt, tmpl) ->
    evt.preventDefault()
    $(".log").hide()
    $('.social_line_wrapper').hide()
    $("#login").hide()
    $('.social_icons').hide()
    $('.forgot_pass').show()

  'click #forgot_password': (evt, tmpl) ->
    evt.preventDefault()
    email = $("#forgot_email").val()
    if email
      user = Meteor.users.findOne({"emails.address": email})
      if user?.emails[0]?.address
        Accounts.forgotPassword { "email": user.emails[0].address}

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
