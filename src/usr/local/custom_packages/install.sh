pkg add pfSense-pkg-squidGuard-1.16.18_6.txz
pkg add pfSense-pkg-squid-0.4.44_30.txz
pkg add pfSense-pkg-snort-4.1.2_3.txz
cp -r /usr/local/custom_packages/snort_rules_up /tmp/
rm /usr/local/pkg/snort/snort_check_for_rule_updates.php
cp /usr/local/custom_packages/snort_check_for_rule_updates.php /usr/local/pkg/snort/
/usr/local/bin/php-cgi -f /usr/local/pkg/snort/snort_check_for_rule_updates.php
