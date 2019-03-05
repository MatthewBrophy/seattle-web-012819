## Objectives
- Understand, theoretically, how authentication and authorization work
- Sign in vs sign up
- Go over sessions, cookies, and implement sign up, log in, and log out
<!-- - Discuss different encryption and hashing schemes, and `bcrypt` specifically
- Augment a user model in rails using `bcrypt` and `password_digest`
- Expose this information in a sample rails app -->

## User Stories

1. As a registered user, I should be able to log in by providing my username (no passwords yet)
- Does my schema need to change
- Do I need any additional routes/views/models

2. As an un-authenticated user, I should be able to see a list of students and information about an individual student.
As an authenticated user I should be able to do all of the above plus create a new student.
If an un-authorized user tries to see the new student form, they should be redirected to the login page.

## Auth
- authentication
  - who am i
  - using username and password we confirm identiy
- authorization
  - what am i allowed to do
  - permissions, access
  - what pages/routes can the user access
  - do we redirect them on certain pages or 404?

# Steps
- create user table, model, seed
- login view, sessions controller, login routes
- logging out
  clearing session
  redirecting to another page
  surfacing login/logout buttons based on session



- authorizing create student
