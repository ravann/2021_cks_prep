gcloud compute instances create k8master --zone=asia-southeast1-b \
--machine-type=e2-standard-2 --network-interface=network-tier=PREMIUM,subnet=default \
--maintenance-policy=MIGRATE --service-account=466449189528-compute@developer.gserviceaccount.com \
--image=ubuntu-1804-bionic-v20210817 --image-project=ubuntu-os-cloud \
--boot-disk-size=20GB --boot-disk-type=pd-balanced \
--boot-disk-device-name=k8master --no-shielded-secure-boot --shielded-vtpm \
--shielded-integrity-monitoring --reservation-affinity=any \
--preemptible --maintenance-policy=terminate

gcloud compute instances create k8worker --zone=asia-southeast1-b \
--machine-type=e2-standard-2 --network-interface=network-tier=PREMIUM,subnet=default \
--maintenance-policy=MIGRATE --service-account=466449189528-compute@developer.gserviceaccount.com \
--image=ubuntu-1804-bionic-v20210817 --image-project=ubuntu-os-cloud \
--boot-disk-size=20GB --boot-disk-type=pd-balanced \
--boot-disk-device-name=k8master --no-shielded-secure-boot --shielded-vtpm \
--shielded-integrity-monitoring --reservation-affinity=any \
--preemptible --maintenance-policy=terminate
