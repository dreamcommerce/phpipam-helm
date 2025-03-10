#!/bin/bash

package_version="$(grep -e "version:" charts/phpipam/Chart.yaml | awk '{ print $NF }' | sed 's/\r//g')"
package_name="phpipam-${package_version}.tgz"

if [ -f "packages/$package_name" ]
then
    echo "Package already exists"
    echo "package_exist=true" >> "$GITHUB_OUTPUT"
    exit 0
else
    helm package --destination packages charts/*
    helm repo index . --url https://dreamcommerce.github.io/phpipam-helm/
    echo "package_exist=false" >> "$GITHUB_OUTPUT"
fi
