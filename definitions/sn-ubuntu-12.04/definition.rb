require File.dirname(__FILE__) + "/../.ubuntu/session.rb"

iso = "ubuntu-12.04.1-server-amd64.iso"
mirror_url = "http://mirror.yellowfiber.net/ubuntu/12.04"

session =
  UBUNTU_SESSION.merge( :iso_file => iso,
                        :iso_md5 => "a8c667e871f48f3a662f3fbf1c3ddb17",
                        :iso_src => "#{mirror_url}/#{iso}" )

Veewee::Session.declare session
