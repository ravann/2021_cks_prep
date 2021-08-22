set -x

chmod 755 /tmp/setup_*
sudo /tmp/setup_join.sh | tee /tmp/setup_join.log
