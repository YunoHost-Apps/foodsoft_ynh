#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

pkg_dependencies=" \
  autoconf \
  bison \
  build-essential \
  default-libmysqlclient-dev \
  libcurl3-dev \
  libffi-dev \
  libgdbm-dev \
  libgdbm3  \
  libmagic-dev \
  libncurses5-dev \
  libreadline-dev \
  libreadline6-dev \
  libssl-dev \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  pkg-config \
  redis-server \
  redis-tools \
  zlib1g-dev \
  "

ruby_version="2.4.6"

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Note(decentral1se): Stole this one from the mastodon_ynh package
# https://github.com/YunoHost-Apps/mastodon_ynh/blob/master/scripts/ynh_install_ruby
# Hopefully they will be introduced as the standard helpers sometime soon

rbenv_install_dir="/opt/rbenv"
export RBENV_ROOT="$rbenv_install_dir"

ynh_install_rbenv () {
  mkdir -p "../conf"
  echo "SOURCE_URL=https://github.com/rbenv/rbenv/archive/v1.1.2.tar.gz
SOURCE_SUM=80ad89ffe04c0b481503bd375f05c212bbc7d44ef5f5e649e0acdf25eba86736" > "../conf/rbenv.src"
  ynh_setup_source "$rbenv_install_dir" rbenv
  mkdir -p "../conf"
  echo "SOURCE_URL=https://github.com/rbenv/ruby-build/archive/v20190615.tar.gz
SOURCE_SUM=7bcb706f43fd2562a62df79f3f01d71c6a1509fac91c8f14ff9e174dc9d99361" > "../conf/ruby-build.src"
  ynh_setup_source "$rbenv_install_dir/plugins/ruby-build" ruby-build
  (cd $rbenv_install_dir 
   ./src/configure && make -C src)
  if [ ! -d $rbenv_install_dir/shims ] ; then
    mkdir $rbenv_install_dir/shims
  fi
}

ynh_install_ruby () {
  declare -Ar args_array=( [v]=ruby_version= )
  local ruby_version
  ynh_handle_getopts_args "$@"
  mkdir -p "$rbenv_install_dir/plugins/ruby-build"
  CLEAR_PATH="$rbenv_install_dir/bin:$PATH"
  PATH=$(echo $CLEAR_PATH | sed 's@/usr/local/bin:@@')
  test -x /usr/bin/ruby && mv /usr/bin/ruby /usr/bin/ruby_rbenv
  if ! type rbenv > /dev/null 2>&1
  then
    ynh_install_rbenv
  fi
  PATH=$CLEAR_PATH
  test -x /usr/bin/ruby_rbenv && mv /usr/bin/ruby_rbenv /usr/bin/ruby
  CONFIGURE_OPTS="--disable-install-doc" MAKE_OPTS="-j2" rbenv install --skip-existing $ruby_version
  echo "$YNH_APP_ID:$ruby_version" | tee --append "$rbenv_install_dir/ynh_app_version"
  ynh_app_setting_set --app=$app --key=ruby_version --value=$ruby_version
  echo  "#rbenv
export RBENV_ROOT=$rbenv_install_dir
export PATH=\"$rbenv_install_dir/bin:$PATH\"
eval \"\$(rbenv init -)\"
#rbenv" > /etc/profile.d/rbenv.sh
  eval "$(rbenv init -)"
  (cd $final_path 
   rbenv local $ruby_version)
}

ynh_remove_ruby () {
  ruby_version=$(ynh_app_setting_get --app=$app --key=ruby_version)
  sed --in-place "/$YNH_APP_ID:$ruby_version/d" "$rbenv_install_dir/ynh_app_version"
  if ! grep --quiet "$ruby_version" "$rbenv_install_dir/ynh_app_version"
  then
    $rbenv_install_dir/bin/rbenv uninstall --force $ruby_version
  fi
  rm /etc/profile.d/rbenv.sh
  if [ ! -s "$rbenv_install_dir/ynh_app_version" ]
  then
    ynh_secure_remove "$rbenv_install_dir"
  fi
}
