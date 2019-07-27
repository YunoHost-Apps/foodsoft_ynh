# Foodsoft for YunoHost

[![Integration level](https://dash.yunohost.org/integration/foodsoft.svg)](https://dash.yunohost.org/appci/app/foodsoft)
[![Install foodsoft with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=foodsoft)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install foodsoft quickly and simply on a YunoHost server.

If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Web-based software to manage a non-profit food coop (product catalog, ordering, accounting, job scheduling).

**Shipped version:** v4.6.0

## Screenshots

![](https://www.turnkeylinux.org/files/images/screenshots/foodsoft_member_ordering_%28no_tolerance%29.jpg)

## Demo

* [Official demo](https://foodcoops.github.io/demo/)

## Configuration

* TODO

## Documentation

 * Official documentation: https://foodcoops.github.io/foodsoft-hosting/
 * YunoHost documentation: https://github.com/mikangali/foodsoft_ynh

## YunoHost specific features

#### Multi-users support

* Is LDAP supported? No, [discussion about that is happening](https://github.com/foodcoops/foodsoft/issues/439)
* Is HTTP auth supported? No.
* Can the app be used by multiple users? Yes

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/foodsoft/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/foodsoft/)
* Stretch x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/foodsoft%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/foodsoft/)

## Limitations

* TODO

## Additional information

* [Foodsoft mailing lists](http://foodsoft.51229.x6.nabble.com/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/foodsoft_ynh/issues
 * App website: https://foodcoops.github.io/
 * Upstream app repository: https://github.com/foodcoops/foodsoft
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing).

To try the testing branch, please proceed like that.

```
$ yunohost app install https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
$ yunohost app upgrade foodsoft -u https://github.com/YunoHost-Apps/foodsoft_ynh/tree/testing --debug
```
