source 0#config.sh

cp 0#config.sh to-take-${folder_name}/
sed -i '/registry_data/d' to-take-${folder_name}/0#config.sh
sed -i 's/registry_port=".*"/registry_port=""/g' to-take-${folder_name}/0#config.sh
sed -i 's/registry_name=".*"/registry_name=""/g' to-take-${folder_name}/0#config.sh


cp .5#mirror-to-registry.sh to-take-${folder_name}/5#mirror-to-registry.sh
cp .6#create-catalogsource.sh to-take-${folder_name}/6#create-catalogsource.sh

tar -czvf to-take-${folder_name}.tar.gz to-take-${folder_name}
rm -rf to-take-${folder_name}/
echo "take the to-take-${folder_name}.tar.gz to restricted environment."
