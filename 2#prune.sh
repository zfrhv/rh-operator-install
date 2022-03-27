source 0#config.sh

mkdir to-take-$folder_name
cd to-take-$folder_name

echo "please login to registry.redhat.io"
podman login registry.redhat.io
opm index prune -f ${src_image} -p ${operators_list} -t localhost:${registry_port}/${image_name}

podman save localhost:${registry_port}/${image_name} -o index.tar
podman push localhost:${registry_port}/${image_name}
