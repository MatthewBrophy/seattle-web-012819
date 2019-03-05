## Objectives
- Discuss different encryption and hashing schemes, and `bcrypt` specifically
- Augment a user model in rails using `bcrypt` and `password_digest`
- Expose this information

## Auth
- authentication
  - who am i
  - using username and password we confirm identiy
- authorization
  - what am i allowed to do
  - permissions, access
  - what pages/routes can the user access
  - do we redirect them on certain pages or 404?

## Steps
- create user table, model, seed
- login view, sessions controller, login routes
- logging out
  - clearing session
  - redirecting to another page
  - surfacing login/logout buttons based on session
- authorizing create student
  - redirecting unauthorized users to another page if they try to access
