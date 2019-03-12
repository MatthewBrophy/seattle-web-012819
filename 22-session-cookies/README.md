 # Learning Goals
- What are cookies and how do they work?
  - pieces of data stored in the browser, specific to the user
  - key value pair
  - NY Times
  - Edit This Cookie
  - Twitter
- What does it mean that HTTP is stateless?
  - each request is new, not keeping track of things about a user
  - cookies are a way of communicating user info between server and client
- headers describe data about the request
- sessions
  - temporary, instance of user interacting with application
  - things between login and logout
  - encrypted cookies, good for securing user data
- How can we use cookies in a Rails app?
  - making a stateless protocol know about state
- What kind of data can / should you store in a cookie?
  - not secure data
  - strings, arrays, hashes
- How can (should) we use sessions in a Rails app?
  - to store user information, securely
  - shopping carts
- How can we use flash in a Rails app?


## External Resources:
- [Rails Docs on Sessions](https://guides.rubyonrails.org/security.html#sessions)
- [Wiki Page on HTTP Headers](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)  
