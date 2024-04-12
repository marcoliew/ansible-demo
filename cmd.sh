ansible all --key-file ~/.ssh/ansible -i inventory -m ping
ansible all --list-hosts
ansible all -m gather_facts
ansible all -m gather_facts --limit 172.16.250.132                   #only on single server
ansible all -m apt -a update_cache=true --become --ask-become-pass   #update catalog
ansible all -m apt -a "upgrade=dist" --become --ask-become-pass        #get all updates
ansible all -m apt -a name=vim-nox --become --ask-become-pass        #install app
ansible all -m apt -a "name=snapd state=latest" --become --ask-become-pass        #get latest version
ansible-playbook --ask-become-pass install_apache.yml
