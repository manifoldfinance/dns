#!/bin/bash
echo "Configure test before running..."
echo "Testing well known mta-sts..."
DOMAIN=
sudo certbot --apache -d mta-sts.$DOMAIN
curl https://mta-sts.$DOMAIN/.well-known/mta-sts.txt

function mta_sts_test() {
  
  mta_sts_url="https://manifoldfinance/.well-known/mta-sts.txt"
  function report_error() {
    fail "
Couldn't automatically determine mta-sts: failed to $@
$mta_sts_url"
  }
}
