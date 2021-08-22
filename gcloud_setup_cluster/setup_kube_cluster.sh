set -x

# Setup Master Node
gcloud compute scp --zone=asia-southeast1-b remote_exec/* k8master:/tmp/

gcloud compute ssh --zone=asia-southeast1-b k8master << EOF

chmod 755 /tmp/*.sh

sh -x /tmp/setup_docker.sh
sh -x /tmp/setup_kube.sh
sh -x /tmp/setup_kube_master.sh

EOF

gcloud compute scp --zone=asia-southeast1-b k8master:/tmp/setup_join.sh /tmp/

# Setup Worker Node

gcloud compute scp --zone=asia-southeast1-b remote_exec/* k8worker:/tmp/
gcloud compute scp --zone=asia-southeast1-b /tmp/setup_join.sh k8worker:/tmp/

gcloud compute ssh --zone=asia-southeast1-b k8worker << EOF
chmod 755 /tmp/*.sh

sh -x /tmp/setup_docker.sh
sh -x /tmp/setup_kube.sh
sudo sh -x /tmp/setup_join.sh

EOF
