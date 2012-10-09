require File.dirname(__FILE__) + "/../.centos/session.rb"

iso = "CentOS-6.3-x86_64-netinstall.iso"

session =
  CENTOS_SESSION.merge({ :iso_file => iso,
                         :iso_md5 => "690138908de516b6e5d7d180d085c3f3",
                         :iso_src => "http://mirror.yellowfiber.net/centos/6.3/isos/x86_64/#{iso}" })

Veewee::Session.declare session
