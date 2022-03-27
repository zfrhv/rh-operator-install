source 0#config.sh

cat << EOF | oc create -f -
apiVersion: operators.coreos.com/v1alpha1
kind: CatalogSource
metadata:
  name: ${folder_name}
  namespace: openshift-marketplace
spec:
  displayName: Navy Operators
  image: ${registry_name}:${registry_port}/${image_name}
  publisher: Navy
  sourceType: grpc
  updateStrategy:
    registryPoll:
      interval: 120m0s
EOF

echo "done! check the operators list in the console!"
