{%- set os_major_release = salt['grains.get']('osmajorrelease', 0)|int %}

include:
  - pkgs.cron
  - pkgs.curl
  - pkgs.dmidecode
  - pkgs.dnsutils
{#-  - pkgs.docker #}
  - pkgs.gcc
  - pkgs.git
  - pkgs.gpg
  - pkgs.ipset
  - pkgs.iproute2
  - pkgs.libcurl
  - pkgs.libffi
  - pkgs.libgit2
  - pkgs.libsodium
  - pkgs.libxml
  - pkgs.libxslt
  - pkgs.man
  - pkgs.nginx
  - pkgs.openldap
  - pkgs.openssl
  - pkgs.openssl-dev
  - pkgs.patch
  - pkgs.ping
  - pkgs.procps
  - pkgs.python3-pip
  - pkgs.rng-tools
  - pkgs.rpmdevtools
  - pkgs.rsync
  - pkgs.sudo
  - pkgs.ssh
  - pkgs.sed
  - pkgs.swig
  - pkgs.tar
  - pkgs.which
  - pkgs.zlib
  {%- if os_major_release <= 39 %}
  {#- Newer OS targets don't require vault for CI/CD, as community salt extensions cover this #}
  - pkgs.vault
  {%- endif %}
  - pkgs.jq
  - pkgs.xz
  - pkgs.tree
  - pkgs.ansible
  - pkgs.cargo {#-
  - pkgs.awscli
  - pkgs.amazon-cloudwatch-agent #}
  - pkgs.samba

  {#- OS Specific packages install #}
  - .g++
  - .python3

dnf-plugins-core:
  pkg.installed
