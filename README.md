# Foodsoft

[![Integration level](https://dash.yunohost.org/integration/foodsoft.svg)](https://dash.yunohost.org/appci/app/foodsoft)

[![Install Foodsoft with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=foodsoft)

*[Lire ce readme en français.](./README_fr.md)*

> This package allow you to install [Foodsoft](https://foodcoops.github.io/) quickly and simply on a YunoHost server.

*If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Web-based software to manage a non-profit food coop (product catalog, ordering, accounting, job scheduling). A food cooperative is a group of people that buy food from suppliers of their own choosing. A collective do-it-yourself supermarket. Members order their products online and collect them on a specified day. And all put in a bit of work to make that possible. Foodsoft facilitates the process.

> https://foodcoops.github.io/

**Shipped version:** v4.6.0

## Pre-installation steps

Please consider the following **before** installing:

* This installation requires Ruby 2.3.x which is an old version of Ruby. For this reason, we need to install the `libssl1.0-dev` package which **removes** the latest `libssl-dev` package. Please keep this in mind if you also self-host other applications on the same Yunohost. You can check this by running `apt remove libssl-dev` and seeing if the package manager complains.

* There are many configuration options asked at installation time. Please review the [default configuration file](https://raw.githubusercontent.com/foodcoops/foodsoft/master/config/app_config.yml.SAMPLE) for some help in learning what these are all about.

## Screenshots

![](https://www.turnkeylinux.org/files/images/screenshots/foodsoft_dashboard_after_login.jpg)

You can also watch the video walkthrough of using the application over at Vimeo:

<a href="https://vimeo.com/145927538">![](https://foodcoops.github.io/assets/images/vimeo-thumb.png)</a>

## Demo

* [Official demo](https://foodcoops.github.io/demo/)

## Configuration

* You can use the web interface to configure most things.

* Find the main application configuration at `/var/www/foodsoft/config`. Please note, any modifications of these files can be wiped on upgrade. We don't have a good solution for that right now. We aim to make most things configurable at installation time.

## Documentation

 * Official documentation: https://foodcoops.github.io/foodsoft-hosting/
 * YunoHost documentation: https://github.com/mikangali/foodsoft_ynh

## YunoHost specific features

#### Multi-users support

* Is LDAP supported? No, [discussion about that is happening](https://github.com/foodcoops/foodsoft/issues/439)
* Is HTTP auth supported? No
* Can the app be used by multiple users? Yes

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/foodsoft/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/foodsoft/)
* Stretch x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/foodsoft/)

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

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing).

To try the testing branch, please proceed like that.

```
$ yunohost app install https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
$ yunohost app upgrade foodsoft -u https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
```

Mirroring
---------

* [hack.decentral1.se/yunohost-packages/foodsoft_ynh](https://hack.decentral1.se/yunohost-packages/foodsoft_ynh)
