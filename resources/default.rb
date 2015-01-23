actions :create, :delete
default_action :create

attribute :pre_shared_key, :kind_of => String, :default => '/etc/racoon/psk.txt'
attribute :certificate, :kind_of => String, :default => '/etc/racoon/certs'
attribute :listen_addr, :kind_of => String, :default => '0.0.0.0'
attribute :listen_port, :kind_of => Fixnum, :default => 500
attribute :lifetime, :kind_of => String, :default => '1 hour'
attribute :init_style, :kind_of => String, :default => 'runit'
