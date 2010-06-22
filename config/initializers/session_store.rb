# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_daily_basis_session',
  :secret      => '2fd6291577aa699a95507f0bb0b595e47116fde0a4157ea4c982bcab9c0df5e24cbb3c7d861edc8c236d5839374e2629cdde9b49329e86b6b469376a59734ff3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
