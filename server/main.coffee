Meteor.startup ->
  Accounts.loginServiceConfiguration.remove service: 'facebook'
  Accounts.loginServiceConfiguration.insert
    service: 'facebook'
    appId: "112651609444825"
    display: 'popup'
    secret: "2e9c6363256b0f9307565623fd692782"
