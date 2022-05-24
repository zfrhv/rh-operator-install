source 0#config.sh

podman rm -f index-image-list
podman run -p 50051:50051 --name index-image-list $src_image &
while ! podman logs index-image-list 2>&1 | grep "serving registry" > /dev/null;
do
  echo "waiting for the container index-image-list to start"
  sleep 0.5
done
grpcurl -plaintext localhost:50051 api.Registry/ListPackages > $(echo $src_image | grep -Po '(?<=/)[^/]+(?=:)').txt
podman rm -f index-image-list
