#!/binbash
# centos web panel module
#

# check root user
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    sleep 10
    exit 1
fi

# copy original theme as rvtheme
cd /usr/local/cwpsrv/var/services/users/cwp_theme/
cp -R ./original ./rvtheme && cd rvtheme

# download and copy all files in rvtheme
wget -O ./css/permi_rv.css -nv  https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/services/users/cwp_theme/rvtheme/css/permi_rv.css

wget -O mod_permi_rv.html -nv  https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/services/users/cwp_theme/rvtheme/mod_permi_rv.html

wget -O ./js/modules/permi_rv.js.twig -nv https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/services/users/cwp_theme/rvtheme/js/modules/permi_rv.js.twig

#wget -O ./js/modules/permi_rv.js.twig -nv https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

# add css file code in header (<head></head>) in index.html
sed -i "s|</head>|   {% if mod.name =='permi_rv' %}\n        <link href="{{url}}/css/permi_rv.css" rel="stylesheet">\n    {% endif %}\n</head>|" index.html

# edit mod_dashboard.html find these code and replace them (for dash board enty)
sed -i 's|{% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}|{% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or("permi_rv" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}|' mod_dashboard.html

#
sed -i 's!<div class="col-md-3" style="padding-bottom: 20px"><a href="?module=backups"><i class="fa fa-cloud fa-3x"></i>   {{langene.BACKUP}}</a></div>!<div class="col-md-3" style="padding-bottom: 20px"><a href="?module=backups"><i class="fa fa-cloud fa-3x"></i>   {{langene.BACKUP}}</a></div> \
                                {% endif %} \
                                {% if ("permi_rv" in rmenu )or(swmenu==1) %} \
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=permi_rv"><i class="fas fa-save fa-3x"></i>   Permission Reset</a></div>!g' mod_dashboard.html

# edit menu_left.html and find and replace code (for left menu enty)
sed -i 's|{% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}|{% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or("permi_rv" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}|' menu_left.html

#

sed -i 's!<li class="search"><a href="?module=backups">{{langene.BACKUP}}</a></li>!<li class="search"><a href="?module=backups">{{langene.BACKUP}}</a></li> \
        {% endif %} \
        {% if ("permi_rv" in rmenu )or(swmenu==1) %} \
        <li class="search"><a href="?module=permi_rv">Permission Reset</a></li>!' menu_left.html


# copy services/user_files/modules/permi_rv.php to /usr/local/cwpsrv/var/services/user_files/modules/
wget -O /usr/local/cwpsrv/var/services/user_files/modules/permi_rv.php -nv https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/services/user_files/modules/permi_rv.php

# copy and set permission on binary files
mkdir /usr/local/permi_rv/ && cd /usr/local/permi_rv/
wget -O permi_rv -nv https://raw.githubusercontent.com/rv8979/permission_reset_module_for_cwp/master/permi_rv/permi_rv
wget -O php_root -nv https://github.com/rv8979/permission_reset_module_for_cwp/blob/master/permi_rv/php_root?raw=true
chmod u=rwx,go=xr,+s php_root
chmod u=rwx,go=xr,+s permi_rv

echo 
echo "///////////////////////////////////////////"
echo " "
echo "instalation done"
echo "Please select rv theme in admin panel"
echo " "
echo "///////////////////////////////////////////"
