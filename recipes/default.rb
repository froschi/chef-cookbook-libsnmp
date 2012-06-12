include_recipe "libperl"
include_recipe "libsensors"
include_recipe "libsnmp-base"
include_recipe "libssl"
include_recipe "libwrap"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libsnmp15
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
