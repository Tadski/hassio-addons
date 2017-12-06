#change the line below to allow person to edit name
sed -i "s/#UPSNAME/UPSNAME APC Smart UPS/g" /etc/apcupsd/apcupsd.conf
sed -i "s/UPSCABLE ether/g" /etc/apcupsd/apcupsd.conf
sed -i "s/NISIP 127.0.0.1/NISIP 0.0.0.0/g" /etc/apcupsd/apcupsd.conf
sed -i "s/UPSTYPE net/g" /etc/apcupsd/apcupsd.conf
sed -i "s/DEVICE server-network-address:3551/g" /etc/apcupsd/apcupsd.conf
echo "ISCONFIGURED=yes" >> /etc/default/apcupsd

echo "$(apctest)"
apcupsd -b
echo "apcupsd is now running!"
