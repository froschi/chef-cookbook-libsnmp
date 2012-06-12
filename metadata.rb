maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libsnmp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libperl", ">= 0.0.1"
depends          "libsensors", ">= 0.0.1"
depends          "libsnmp-base", ">= 0.0.1"
depends          "libssl", ">= 0.0.1"
depends          "libwrap", ">= 0.0.1"
