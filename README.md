# Permission reset module for cwp

This module work for [centos web panel](http://centos-webpanel.com/). fix all permissions without using root user. 


Fix invalid permission on all files and directory in public_html. 644 for files and 755 for directory.



## Installation
Go to terminal and login as root. Execute following commands for installation 

```bash
wget https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/install.sh
```
```bash
chmod +x install.sh
```
```bash
./install.sh
```

After installation has been completed then select theme (rvtheme) from client admin panel

Set theme forcefully for all clients
go to User Accounts >> Features,Themes,Languages >> Themes
and select "rvtheme"


## License
[MIT](https://github.com/rv8979/permission_reset_module_for_cwp/blob/master/LICENSE)
