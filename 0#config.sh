
# to find your operator name in this list, run "oc get packagemanifest" and find your operator, if you want more info use "-o yaml". put the packagemanifest in the operators_list

registry_name="localhost"
registry_port="5013"
registry_data="/var/registry/data51"
#operators_list="cic-operator,elasticsearch-eck-operator-certified"
operators_list="prometheus"
image_name="operator-index/prometheus:24-05-2022"
src_image="quay.io/operatorhubio/catalog:latest"
REG_CREDS=$XDG_RUNTIME_DIR/containers/auth.json
REGISTRY_AUTH_FILE=$XDG_CONFIG_HOME/containers/auth.json

#quay.io/operatorhubio/catalog:latest


folder_name="$(echo "$image_name" | grep -Po '(?<=/).+(?=:)')"
