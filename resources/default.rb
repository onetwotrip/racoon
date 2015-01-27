actions :create, :delete
default_action :create

attribute :ipaddress, :name_attribute => true, :kind_of => String
attribute :cookbook, :default => 'racoon', :kind_of => String
attribute :source, :default => 'racoon-remote.conf.erb', :kind_of => String
attribute :pre_shared_key, :required => true,  :kind_of => String
attribute :encryption_algorithms, :kind_of => Hash, :default => {
"sha1" => ["aes 256", "aes", "3des", "des"],
"md5" => ["aes 256", "aes", "des"]
}
