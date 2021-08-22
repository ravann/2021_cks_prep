set -x 

sh vm_create.sh

sleep 60

sh setup_kube_cluster.sh

