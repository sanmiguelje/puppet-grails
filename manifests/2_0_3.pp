# Public: Install grails 2.0.3 into Homebrew
#
# Examples
#
#   include grails::2_0_3
class grails::2_0_3 {
  include homebrew

  homebrew::formula { 'grails':
    before => Package['boxen/brews/2_0_3'],
  }

  package { 'boxen/brews/2_0_3':
    ensure => '2.0.3'
  }
}
