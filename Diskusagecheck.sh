
/bin/sh -xe

readarray -t array <<< "$(df -h)"

echo "${array[0]}"

echo "${array[1]}"


var=$(echo "${array[1]}"| grep -aob '%' | grep -oE '[0-9]+')


echo "$var" 

echo "${array[1]:$var-3:4}" 

echo "${array[1]:$var-3:4}" | tr --delete '%G' # returns 20
