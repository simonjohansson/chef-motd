actions :create
default_action :create

attribute :name, :kind_of => String, :name_attribute => true
attribute :motd, :kind_of => String, :required => true
