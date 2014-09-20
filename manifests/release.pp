# release.pp

class apt::release (
  $release_id
) {

  include apt::params

  $root = $apt::params::root

  $warn_message = $::apt::warn_message

  file { "${root}/apt.conf.d/01release":
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('apt/release.erb'),
  }
}
