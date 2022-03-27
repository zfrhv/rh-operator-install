source 0#config.sh

echo "please login to registry.connect.redhat.com"
podman login registry.connect.redhat.com
cd to-take-$folder_name
oc adm catalog mirror localhost:${registry_port}/${image_name} file:///local/index -a ${REG_CREDS} --index-filter-by-os='linux/amd64' --insecure


