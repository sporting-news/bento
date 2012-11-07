require File.dirname(__FILE__) + "/../.centos/session.rb"

iso = "CentOS-6.3-x86_64-netinstall.iso"
iso_url = "http://mirror.yellowfiber.net/centos/6.3/isos/x86_64/#{iso}"

session =
  COMMON_SESSION.merge({ :boot_cmd_sequence =>
                         [
                           '<Esc> ',
                           'linux text ks=http://%IP%:%PORT%/ks.cfg ',
                           '<Enter>'
                         ],
                         :memory_size => "512",
                         :iso_file => iso,
                         :iso_md5 => "690138908de516b6e5d7d180d085c3f3",
                         :iso_src => "#{iso_url}" })

Veewee::Session.declare session
