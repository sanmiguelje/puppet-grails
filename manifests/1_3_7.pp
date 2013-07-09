# Public: Install grails 1.3.7 into Homebrew
#
# Examples
#
#   include grails::1_3_7
class grails::1_3_7 {
  include homebrew

  homebrew::formula { 'grails':
    before => Package['boxen/brews/grails'],
  }

  package { 'boxen/brews/grails':
    ensure => '1.3.7'
  }
}
