server "overwine.io",
  user: fetch(:user),
  roles: %w{app web},
  ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey)
  }
