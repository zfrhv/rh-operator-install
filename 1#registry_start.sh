source 0#config.sh
rm -rf ${registry_data}/*
podman stop ${registry_name}
podman rm ${registry_name}
podman run --name ${registry_name} -d -p ${registry_port}:5000 -v ${registry_data}:/var/lib/registry:z docker.io/library/registry:2
