Meteor.methods
  newUser: (name, username, email, password) ->
    userDetails = {
      email: email
      password: password
      username: username
      }
    id = Accounts.createUser(userDetails)
    return id
