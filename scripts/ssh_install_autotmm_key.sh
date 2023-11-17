# Move the SSH key to Authorized Keys and ensure permissions
mkdir -p /home/tesadmin/.ssh
chmod 700 /home/tesadmin/.ssh
cat /tmp/id_rsa.pub > /home/tesadmin/.ssh/authorized_keys
chmod 644 /home/tesadmin/.ssh/authorized_keys
chown -R tesadmin /home/tesadmin/.ssh
rm -rf /tmp/id_rsa.pub
