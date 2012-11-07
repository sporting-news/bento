require File.dirname(__FILE__) + "/../.centos/session.rb"

iso = "CentOS-5.8-x86_64-netinstall.iso"
iso_url = "http://mirror.yellowfiber.net/centos/5.8/isos/x86_64/#{iso}"

session =
  CENTOS_SESSION.merge({ :iso_file => iso,
                         :iso_md5 => "6425035e9adee4b8653a85f59877ac5b",
                         :iso_src => "#{iso_url}" })

Veewee::Session.declare session
