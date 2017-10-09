#!/bin/sh
rm -rf /etc/openldap/slapd.d/*
slaptest -f /etc/openldap/slapd-legacy.conf -F /etc/openldap/slapd.d/
chown -R ldap:ldap /etc/openldap/slapd.d /var/lib/ldap
chmod -R 000 /etc/openldap/slapd.d
chmod -R u+rwX /etc/openldap/slapd.d
