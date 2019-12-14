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
wget -O ./css/permi_rv.css -nv  https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

wget -O mod_permi_rv.html -nv  https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

wget -O ./js/modules/permi_rv.js.twig -nv https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

wget -O ./js/modules/permi_rv.js.twig -nv https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

# add css file code in header (<head></head>) in index.html


# edit mod_dashboard.html find these code and replace them (for dash board enty)


# edit menu_left.html and find and replace code (for left menu enty)


# copy services/user_files/modules/permi_rv.php to /usr/local/cwpsrv/var/services/user_files/modules/
wget -O /usr/local/cwpsrv/var/services/user_files/modules/permi_rv.php -nv https://raw.githubusercontent.com/rv8979/internet_switcher/master/line_changer.sh

# copy and set permission on binary files
mkdir /usr/local/permi_rv/ && cd /usr/local/permi_rv/
wget -O permi_rv -nv https://raw.githubusercontent.com/rv8979/
wget -O php_root -nv https://raw.githubusercontent.com/rv8979/