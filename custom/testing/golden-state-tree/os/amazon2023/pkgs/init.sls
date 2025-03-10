include:
  - pkgs.cron
  - pkgs.curl
  - pkgs.dmidecode
  - pkgs.dnsutils
  - pkgs.gcc
  - pkgs.gpg
  - pkgs.git
  - pkgs.iproute2
  - pkgs.libcurl
  - pkgs.libffi
{#-  - pkgs.libsodium-compile #}
  - pkgs.libxml
  - pkgs.libxslt
  - pkgs.make
  - pkgs.man
  - pkgs.nginx
  - pkgs.openldap
  - pkgs.openssl
  - pkgs.openssl-dev
  - pkgs.passwd
  - pkgs.patch
  - pkgs.procps
  - pkgs.ping
  - pkgs.python3
  - pkgs.python3-pip
  - pkgs.rng-tools
  - pkgs.rpmdevtools
  - pkgs.rsync
  - pkgs.sed
  - pkgs.swig
  - pkgs.ssh
  - pkgs.sudo
  - pkgs.tar
  - pkgs.which
  - pkgs.zlib
  - pkgs.vault
  - pkgs.jq
  - pkgs.xz
  - pkgs.tree
  - pkgs.cargo {#-
  - pkgs.awscli
  - pkgs.amazon-cloudwatch-agent #}
  - pkgs.samba

  {#- OS Specific packages install #}
  {%- if grains['osarch'] not in ('amd64', 'armhf', 'arm64') %}
{#-  - .docker #}
  {%- endif %}
