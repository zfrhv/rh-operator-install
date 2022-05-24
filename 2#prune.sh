source 0#config.sh

mkdir to-take-$folder_name
cd to-take-$folder_name

mkdir -p pruned-catalog/configs

opm render $src_image | jq 'select( .package == "'$operators_list'" or .name == "'$operators_list'")' > pruned-catalog/configs/index.json

opm alpha generate dockerfile pruned-catalog/configs && cd pruned-catalog/

podman build -t localhost:${registry_port}/${image_name} -f configs.Dockerfile .

cd ..
podman save localhost:${registry_port}/${image_name} -o index.tar
podman push localhost:${registry_port}/${image_name}

rm -rf pruned-catalog
