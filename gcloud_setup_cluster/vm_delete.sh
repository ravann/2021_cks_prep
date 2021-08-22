set -x 

gcloud compute instances delete k8master --delete-disks=all --zone=asia-southeast1-b --quiet

gcloud compute instances delete k8worker --delete-disks=all --zone=asia-southeast1-b --quiet
