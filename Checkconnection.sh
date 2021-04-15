/bin/sh -xe

if nc -zw1 google.com 443; then
  echo "we have connectivity"
fi
