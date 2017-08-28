# Author Mihir Jain

Accounts.emailTemplates.resetPassword.text = (user, url) ->
  token = user.services.password.reset.token
  return "Hello, " + url +
          "\n\n is the link to reset your password"
