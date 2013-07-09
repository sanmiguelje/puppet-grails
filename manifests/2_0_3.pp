# Public: Install grails 2.0.3 into Homebrew
#
# Examples
#
#   include grails::2_0_3
class grails::2_0_3 {
  include homebrew

  homebrew::formula { 'grails':
    before => Package['boxen/brews/v2_0_3'],
  }

  package { 'boxen/brews/grails':
    ensure => '2.0.3'
  }
}
