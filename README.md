# Foodsoft for YunoHost

[![Integration level](https://dash.yunohost.org/integration/foodsoft.svg)](https://dash.yunohost.org/appci/app/foodsoft) ![](https://ci-apps.yunohost.org/ci/badges/foodsoft.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/foodsoft.maintain.svg)  
[![Install Foodsoft with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=foodsoft)

*[Lire ce readme en français.](./README_fr.md)*

> This package allow you to install Foodsoft quickly and simply on a YunoHost server.
*If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

[Foodsoft](https://foodcoops.github.io/) is a web-based software to manage a non-profit food coop (product catalog, ordering, accounting, job scheduling). A food cooperative is a group of people that buy food from suppliers of their own choosing. A collective do-it-yourself supermarket. Members order their products online and collect them on a specified day. And all put in a bit of work to make that possible. Foodsoft facilitates the process.

**Shipped version:** 4.7.1.1

## Credentials

[LDAP is not supported yet](https://github.com/foodcoops/foodsoft/issues/439). Setting an administrator password at install time is [also not supported yet](https://github.com/YunoHost-Apps/foodsoft_ynh/issues/9). However, we do support setting the administrator profile details like username, first name, last name and email. When you first log in as the administrator, you must use the default value of **secret**. You should reset this password immediately.

## Pre-installation steps

Please consider the following **before** installing:

* There are many configuration options asked at installation time. Please review the [default configuration file](https://raw.githubusercontent.com/foodcoops/foodsoft/master/config/app_config.yml.SAMPLE) for some help in learning what these are all about.

## Status

* This is a new package and quite experimental. Please test with care.
* Only the `install` and `remove` actions work. Please see [this ticket](https://github.com/YunoHost-Apps/foodsoft_ynh/issues/1) for progress on enabling the rest.
* Make sure to review issues and on-going work on [the issue tracker](https://github.com/YunoHost-Apps/foodsoft_ynh/issues)

## Screenshots

![](https://www.turnkeylinux.org/files/images/screenshots/foodsoft_dashboard_after_login.jpg)

You can also watch the video walkthrough of using the application over at Vimeo:

<a href="https://vimeo.com/145927538">![](https://foodcoops.github.io/assets/images/vimeo-thumb.png)</a>

## Demo

* [Official demo](https://foodcoops.github.io/demo/)

## Configuration

* You can use the web interface to configure most things.

* Find the main application configuration at `/var/www/foodsoft/config`. Please note, any modifications of these files can be wiped on upgrade. We don't have a good solution for that right now. We aim to make most things configurable at installation time.

## Administration

* You have a number of Systemd services to manage. You can check them out with:
  * systemctl status foodsoft - the rails server managed by passenger
  * systemctl status resque - the redis task runner

## Documentation

 * Official documentation: https://foodcoops.github.io/foodsoft-hosting/
 * YunoHost documentation: https://github.com/mikangali/foodsoft_ynh

## YunoHost specific features

#### Multi-users support

* Is LDAP supported? No, [discussion about that is happening](https://github.com/foodcoops/foodsoft/issues/439)
* Is HTTP auth supported? No
* Can the app be used by multiple users? Yes

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/foodsoft/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/foodsoft/)

## Limitations

* Unknown so far.

## Additional information

* [Foodsoft mailing lists](http://foodsoft.51229.x6.nabble.com/)
* [YunoHost forum community package topic](https://forum.yunohost.org/t/community-app-foodsoft-software-to-manage-a-non-profit-food-coop/8615)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/foodsoft_ynh/issues
 * App website: https://foodcoops.github.io/
 * Upstream app repository: https://github.com/foodcoops/foodsoft
 * YunoHost website: https://yunohost.org/

## Developers info

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
or
sudo yunohost app upgrade foodsoft -u https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
```

## Notes

* We **do not** re-compile Nginx to use Passenger. We use the [proxy mode](https://www.phusionpassenger.com/library/deploy/standalone/reverse_proxy.html).
* You can use the [Passenger troubleshooting documentation](https://www.phusionpassenger.com/library/admin/standalone/troubleshooting/ruby/) to help debug Passenger.
* Please see the [YunoHost CI dashboard](https://ci-apps-dev.yunohost.org/jenkins/job/foodsoft_ynh%20(decentral1se)/) for current CI status

Mirroring
---------

* [hack.decentral1.se/yunohost-packages/foodsoft_ynh](https://hack.decentral1.se/yunohost-packages/foodsoft_ynh)
