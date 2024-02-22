
#host=pi3plus
host=pi4jr
# host=zero
#host=pi3jr-wifi
#host=pi4
#host=pi3
#host=pi3jr-wifi
#host=zerow2
#host=pi5

GIT_REPO_PATH=/Users/vince/Desktop/gickup-backups/github.com/vinceskahan/home-pi-rebuild

cd ${GIT_REPO_PATH} 2>/dev/null
if [ x${?} != "x0" ]
then
  echo "oops - ${GIT_REPO_PATH} not found"
  exit 1
fi

export HOST_NAME_HERE="${host}"
ssh-copy-id -i ~/.ssh/id_rsa_nopass pi@${HOST_NAME_HERE}

ansible-playbook -i hosts -l ${HOST_NAME_HERE} --extra-vars='firstboot=True' ${GIT_REPO_PATH}/site.yml

