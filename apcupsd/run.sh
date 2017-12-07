#change the line below to allow person to edit name
sed -i "s/#UPSNAME/UPSNAME APC Smart UPS/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#UPSCABLE/UPSCABLE ether/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#UPSTYPE/UPSTYPE net/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#NISIP/NISIP 0.0.0.0/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#PCNET/PCNET 192.168.100.116:3551/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#UPSCLASS/UPSCLASS standalone/g" /etc/apcupsd/apcupsd.conf
sed -i "s/#UPSMODE/UPSMODE disable/g" /etc/apcupsd/apcupsd.conf
echo "ISCONFIGURED=yes" >> /etc/default/apcupsd

echo "$(apctest)"
apcupsd -b
echo "apcupsd is now running!"
