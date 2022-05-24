source 0#config.sh

cd to-take-$folder_name
oc adm catalog mirror localhost:${registry_port}/${image_name} file:///local/index --index-filter-by-os='linux/amd64' --insecure


