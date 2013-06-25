# == Class: jalli-wireshark
#
# Sets up wireshark with Gnome GUI
#
# === Authors
#
# Jarl Stefansson <jarl.stefansson@gmail.com>
#
# === Copyright
#
# Copyright 2013 Jarl Stefansson, unless otherwise noted.
#
class jalli-wireshark {
  package { 'wireshark':
    ensure => installed
  }
  if $::osfamily == 'RedHat' {
    package { 'wireshark-gnome':
      ensure => installed
    }
  }
}
