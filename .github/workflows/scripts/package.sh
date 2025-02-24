#!/bin/bash

package_version=$(grep -e 'version:' charts/phpipam/Chart.yaml | awk '{ print $NF }')
package_name="phpipam-${package_version}"

if [ ! -f "packages/${package_name}.tgz" ]; then
    helm package --destination packages charts/*
    helm repo index . --url https://dreamcommerce.github.io/phpipam-helm/
else
    echo "Package already exists: ${package_name}"
    exit 0
fi
