source 0#config.sh
rm -rf ${registry_data}/*
podman rm -f tmp-registry
podman run --name tmp-registry -d -p ${registry_port}:5000 -v ${registry_data}:/var/lib/registry:z docker.io/library/registry:2
