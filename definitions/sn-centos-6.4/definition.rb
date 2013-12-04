require File.dirname(__FILE__) + "/../.centos/session.rb"

iso = "CentOS-6.4-x86_64-netinstall.iso"
iso_url = "http://mirror.yellowfiber.net/centos/6.4/isos/x86_64/#{iso}"

session =
  CENTOS_SESSION.merge({ :boot_cmd_sequence =>
                         [
                           '<Esc> ',
                           'linux text ks=http://%IP%:%PORT%/ks.cfg ',
                           '<Enter>'
                         ],
                         :memory_size => "512",
                         :iso_file => iso,
                         :iso_md5 => "4a5fa01c81cc300f4729136e28ebe600",
                         :iso_src => "#{iso_url}" })

Veewee::Session.declare session
