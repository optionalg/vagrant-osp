#!/bin/sh

set -u
set -e

version=$1
package="puppetserver-${version//.SNAPSHOT/-0.1SNAPSHOT}.el7.noarch.rpm"
url="http://builds.delivery.puppetlabs.net/puppetserver/${version}/artifacts/el/7/PC1/x86_64/$package"

rpm -Uvh $url

systemctl enable puppetserver
systemctl start puppetserver
