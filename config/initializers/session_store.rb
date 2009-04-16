# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gotosleep_session',
  :secret      => '08b80749eaca3c2d9ee54d75aee45537d9a6dd298d45b422a41db54ec4edaf297f6c71a2828dd19de305d1d05eadb6c2878f3b70ca21855034cde9a2b9f51dc0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
