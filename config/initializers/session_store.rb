# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_manual_session',
  :secret      => '40423fb88534b00e4ccf147f2d0814d24a7ae51e8c5d6acb33df8e3ffb913b7d6fb344a737acdd0ac3dd572131d1e1f5829e50fad3c05de6499acfa374a6e1d3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
