# Goals

- define REST
- define CRUD
- understand MVC directory structure
- implement RESTful Routing
- describe how the HTTP verbs correspond to REST
- write form templates in HTML with ERB
- build params hash from forms
  - form name is key, value is value
  - sinatra provides us with an indifferent hash where we can use symbols or strings to acces keys

# Hacking the Internet
- for PATCH, PUTS, DELETE (anything other than GET or POST)
- in my hacking controller, `set :method_override, true`
  - tells Sinatra to enable this hack
- in my forms action = the actual action, method = post
- create a hidden input, name = '_method' value= 'patch' (request type you want)
