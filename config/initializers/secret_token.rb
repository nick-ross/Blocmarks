# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Blocmarks::Application.config.secret_token = ENV['SECRET_TOKEN'] || '72fc9208fe1cc148310e6f2daf8458b5d699b5e907822292dbc5a1339d228d9b98dc72c5cc3fe800e9891bcddb6b9773c820fb2807c52595c41f56aa8944cac4'
