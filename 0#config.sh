
# to find your operator name in this list, run "oc get packagemanifest" and find your operator, if you want more info use "-o yaml". put the packagemanifest in the operators_list

registry_name="tmp-registry"
registry_port="5013"
registry_data="/var/registry/data51"
#operators_list="cic-operator,elasticsearch-eck-operator-certified"
operators_list="advanced-cluster-management"
image_name="operator-index/advanced-cluster-management:06-03-2022"
src_image="registry.redhat.io/redhat/redhat-operator-index:v4.8"
REG_CREDS=$XDG_RUNTIME_DIR/containers/auth.json
REGISTRY_AUTH_FILE=$XDG_CONFIG_HOME/containers/auth.json

#registry.redhat.io/redhat/certified-operator-index:v4.8
#registry.redhat.io/redhat/community-operator-index:v4.8
#registry.redhat.io/redhat/redhat-marketplace-index:v4.8
#registry.redhat.io/redhat/redhat-operator-index:v4.8
#quay.io/operatorhubio/catalog:latest


folder_name="$(echo "$image_name" | grep -Po '(?<=/).+(?=:)')"
