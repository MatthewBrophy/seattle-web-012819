## Objectives
- encryption
  - take a message, use a key to jumble it up
  - someone with that key can unjumble it on the other side and get your original message
- Discuss different encryption and hashing schemes
  - use `Digest::SHA256.base64digest`
    - deterministic: same input => same output
- introduce `bcrypt`
  - `has_secure_password` macro
- Augment a user model in rails using `bcrypt`

## Rules of Auth
- install gem
- you don't store passwords as plain text
  - add a password_digest column
  - add `has_secure_password` to the model with the password
- at signin use the bcrypt authenticate method to confirm that the password matches
- password hashing is one-way encryption (we never decrypt it)

## New User
- bcrypt knows to compare a password to a passwords confirmation DURING our user creation
  - either saves and returns user or attaches errors to use

## Authentication
- confirming identity with username and password

## Resources
- [Digest](https://ruby-doc.org/stdlib-2.2.1/libdoc/digest/rdoc/Digest.html)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
