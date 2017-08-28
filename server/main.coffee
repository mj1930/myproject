Meteor.startup ->
  Accounts.loginServiceConfiguration.remove service: 'facebook'
  Accounts.loginServiceConfiguration.insert
    service: 'facebook'
    appId: "112651609444825"
    display: 'popup'
    secret: "2e9c6363256b0f9307565623fd692782"
  Accounts.loginServiceConfiguration.remove service: 'google'
  Accounts.loginServiceConfiguration.insert
    service: 'google'
    clientId: "640845104414-ukpt5upa90s3jam5omp6cn16l87kldh1.apps.googleusercontent.com"
    secret: "MzENDqaknePbSjtEb4KbVbFN"

  Accounts.loginServiceConfiguration.remove service: "twitter"
  Accounts.loginServiceConfiguration.insert
    service: "twitter",
    consumerKey: "GQndlLAYkO1wsXPGP0CRfW5Bi",
    secret: "JdOdPiwGJB3WL1oimaSveJqfmm0nvFDgni8FItp0Sn6Jwr3Ge2"
