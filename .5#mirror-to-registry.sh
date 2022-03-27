source 0#config.sh

if [ -z "$registry_name" ]
then
  echo "error: you didnt specified the registry name and port in 0#config.sh, please specify the registry+port where to push images"
else
  echo "please login to $registry_name:$registry_port"
  podman login $registry_name:$registry_port
  
  podman load -i index.tar
  podman tag ${image_name} $registry_name:$registry_port/${image_name}
  podman push $registry_name:$registry_port/${image_name}
  podman rmi $registry_name:$registry_port/${image_name}
  podman rmi ${image_name}
  oc adm catalog mirror file://local/index/${image_name} $registry_name:$registry_port -a ${REG_CREDS} --insecure
fi
