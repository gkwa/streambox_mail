name 'streambox_mail'
maintainer 'Taylor Monacelli'
maintainer_email 'taylormonacelli@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures streambox_mail'
long_description 'Installs/Configures streambox_mail'
version '0.1.0'
license 'Apache-2.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
issues_url 'https://github.com/streambox/streambox_mail/issues'
source_url 'https://github.com/streambox/streambox_mail'

depends 'postfix'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'ubuntu'
