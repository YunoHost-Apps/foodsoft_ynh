## Credentials

[LDAP is not supported yet](https://github.com/foodcoops/foodsoft/issues/439). Setting an administrator password at install time is [also not supported yet](https://github.com/YunoHost-Apps/foodsoft_ynh/issues/9). However, we do support setting the administrator profile details like username, first name, last name and email. When you first log in as the administrator, you must use the default value of **secret**. You should reset this password immediately.

## Pre-installation steps

Please consider the following **before** installing:

* There are many configuration options asked at installation time. Please review the [default configuration file](https://raw.githubusercontent.com/foodcoops/foodsoft/master/config/app_config.yml.SAMPLE) for some help in learning what these are all about.

## Status

* This is a new package and quite experimental. Please test with care.
* Only the `install` and `remove` actions work. Please see [this ticket](https://github.com/YunoHost-Apps/foodsoft_ynh/issues/1) for progress on enabling the rest.
* Make sure to review issues and on-going work on [the issue tracker](https://github.com/YunoHost-Apps/foodsoft_ynh/issues)

## Configuration

* You can use the web interface to configure most things.

* Find the main application configuration at `/var/www/foodsoft/config`. Please note, any modifications of these files can be wiped on upgrade. We don't have a good solution for that right now. We aim to make most things configurable at installation time.

## Administration

* You have a number of Systemd services to manage. You can check them out with:
  * systemctl status foodsoft - the rails server managed by passenger
  * systemctl status resque - the redis task runner
