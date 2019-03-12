const Google = {
  login: function(username) {
    return {
      username: username,
      // this syntactic sugar allows us to
      // associate a variable value with the variable
      // name quite easily!
      // username,
      network: "Google+"
    }
  }
}