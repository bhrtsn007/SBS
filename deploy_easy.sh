#!/bin/bash
echo "####################################################################"
echo "Installation Started"
echo "####################################################################"
echo ""
echo ""
echo "Backup old file"
sudo mv /usr/lib/cgi-bin /usr/lib/cgi-bin-old
echo "Removing and changing permission of cgi-bin"
sudo rm -r /usr/lib/cgi-bin && sudo chown -R root:root /tmp/cgi-bin
echo "moving cgi-bin"
sudo mv /tmp/cgi-bin /usr/lib
echo "making all file executable"
sudo find /usr/lib/cgi-bin/ -type f -iname "*.sh" -exec chmod +x {} \;
echo ""
echo ""
echo "####################################################################"
echo "Installation Completed"
echo "####################################################################"
