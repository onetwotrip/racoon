actions :create, :delete
default_action :create

attribute :ipaddress, :name_attribute => true
attribute :source, :default => 'racoon-remote.conf.erb'
attribute :my_identifier, :kind_of => String, :required => true
attribute :shared_secret, :kind_of => String, :required => true
attribute :xauth_login, :kind_of => String, :required => true
attribute :encryption_algorithms, :kind_of => Hash, :default => {
"sha1" => ["aes 256", "aes", "3des", "des"],
"md5" => ["aes 256", "aes", "des"]
}
