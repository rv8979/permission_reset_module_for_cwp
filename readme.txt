go to /usr/local/cwpsrv/var/services/users/cwp_theme

now edit on original theme or your own theme (copy original dir to another name in same dir like as "cp -r ./original ./rvtheme". my dir or theme name is rvtheme)

now goto rvtheme or your original theme dir and make changes

step 1) copy css/permi_rv.css on css folder
step 2) copy mod_permi_rv.html in theme dir
step 3) copy js/modules/permi_rv.js.twig in js/modules/

step 4) add css file code in header (<head></head>) in index.html

=======================
    {% if mod.name =='permi_rv' %}
        <link href="{{url}}/css/permi_rv.css" rel="stylesheet">
    {% endif %}
======================

step 5) edit mod_dashboard.html find these code and replace them (for dash board enty)

old code
===========================
                {% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5><i class="fa fa-edit"></i> {{langmod.FILEM}}</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="row" style="margin-top: 15px">
                                    {% if ("files_system_lock" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="#" class="files_system_lock"><i class="fa fa-lock fa-3x"></i>   {{langene.FILESYST}}</a></div>
                                    {% endif %}
                                    {% if ("clam" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="#" id="clam" class="clam"><i class="fa fa-bug fa-3x"></i>   {{langene.ANTIVI}}</a></div>
                                    {% endif %}
                                    {% if ("fileManager2" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="fileManager2.php" target="_blank"><i class="fa fa-file-archive-o fa-3x"></i>   {{langene.FTPFILE}}</a></div>
                                    {% endif %}
                                    {% if ("ftp_accounts" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=ftp_accounts"><i class="fa fa-file-code-o fa-3x"></i>   {{langene.FTPACC}}</a></div>
                                    {% endif %}
                                    {% if ("backups" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=backups"><i class="fa fa-cloud fa-3x"></i>   {{langene.BACKUP}}</a></div>
                                    {% endif %}
                                    {% if (apache==1)%}
                                        {% if ("protected_directory" in rmenu )or(swmenu==1) %}
                                            <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=protected_directory"><i class="fa fa-unlock-alt fa-3x"></i>   {{langene.DIRPROTE}}</a></div>
                                        {% endif %}
                                    {% endif %}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {% endif %}
===========================

new code
===========================
            {% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or("permi_rv" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5><i class="fa fa-edit"></i> {{langmod.FILEM}}</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="row" style="margin-top: 15px">
                                {% if ("files_system_lock" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="#" class="files_system_lock"><i class="fa fa-lock fa-3x"></i>   {{langene.FILESYST}}</a></div>
                                {% endif %}
                                {% if ("clam" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="#" id="clam" class="clam"><i class="fa fa-bug fa-3x"></i>   {{langene.ANTIVI}}</a></div>
                                {% endif %}
                                {% if ("fileManager2" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="fileManager2.php" target="_blank"><i class="fa fa-file-archive-o fa-3x"></i>   {{langene.FTPFILE}}</a></div>
                                {% endif %}
                                {% if ("ftp_accounts" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=ftp_accounts"><i class="fa fa-file-code-o fa-3x"></i>   {{langene.FTPACC}}</a></div>
                                {% endif %}
                                {% if ("backups" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=backups"><i class="fa fa-cloud fa-3x"></i>   {{langene.BACKUP}}</a></div>
                                {% endif %}
                                {% if ("permi_rv" in rmenu )or(swmenu==1) %}
                                    <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=permi_rv"><i class="fas fa-save fa-3x"></i>   Permission Reset</a></div>
                                {% endif %}
                                {% if (apache==1)%}
                                    {% if ("protected_directory" in rmenu )or(swmenu==1) %}
                                        <div class="col-md-3" style="padding-bottom: 20px"><a href="?module=protected_directory"><i class="fa fa-unlock-alt fa-3x"></i>   {{langene.DIRPROTE}}</a></div>
                                    {% endif %}
                                {% endif %}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {% endif %}
===========================

step 6) edit menu_left.html and find and replace code (for left menu enty)

old code
===========================

    {% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}
    <li class="searchmenu">
        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">{{langene.FILEM}}</span><span class="fa arrow"></span></a>
        <ul class="nav nav-second-level collapse">
            {% if ("files_system_lock" in rmenu )or(swmenu==1) %}
            <li class="search"><a href="#" class="files_system_lock">{{langene.FILESYST}}</a></li>
            {% endif %}
            {% if ("clam" in rmenu )or(swmenu==1) %}
            <li class="search"><a href="#" id="clam" class="clam">{{langene.ANTIVI}}</a></li>
            {% endif %}
            {% if ("file_manager" in rmenu )or(swmenu==1) %}
            <li class="search"><a href="fileManager2.php" target="_blank">{{langene.FTPFILE}}</a></li>
            {% endif %}
            {% if ("ftp_accounts" in rmenu )or(swmenu==1) %}
            <li class="search"><a href="?module=ftp_accounts">{{langene.FTPACC}}</a></li>
            {% endif %}
            {% if ("backups" in rmenu )or(swmenu==1) %}
            <li class="search"><a href="?module=backups">{{langene.BACKUP}}</a></li>
            {% endif %}
            {% if (apache==1)%}
                {% if ("protected_directory" in rmenu )or(swmenu==1) %}
                    <li class="search"><a href="?module=protected_directory">{{langene.DIRPROTE}}</a></li>
                {% endif %}
            {% endif %}
        </ul>
    </li>
    {% endif %}
==========================


new code
==================================
{% if (("files_system_lock" in rmenu )or("clam" in rmenu )or("fileManager2" in rmenu )or("ftp_accounts" in rmenu )or("backups" in rmenu )or("permi_rv" in rmenu )or ("protected_directory" in rmenu ))or(swmenu==1) %}
<li class="searchmenu">
    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">{{langene.FILEM}}</span><span class="fa arrow"></span></a>
    <ul class="nav nav-second-level collapse">
        {% if ("files_system_lock" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="#" class="files_system_lock">{{langene.FILESYST}}</a></li>
        {% endif %}
        {% if ("clam" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="#" id="clam" class="clam">{{langene.ANTIVI}}</a></li>
        {% endif %}
        {% if ("file_manager" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="fileManager2.php" target="_blank">{{langene.FTPFILE}}</a></li>
        {% endif %}
        {% if ("ftp_accounts" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="?module=ftp_accounts">{{langene.FTPACC}}</a></li>
        {% endif %}
        {% if ("backups" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="?module=backups">{{langene.BACKUP}}</a></li>
        {% endif %}
        {% if ("permi_rv" in rmenu )or(swmenu==1) %}
        <li class="search"><a href="?module=permi_rv">Permission Reset</a></li>
        {% endif %}
        {% if (apache==1)%}
            {% if ("protected_directory" in rmenu )or(swmenu==1) %}
                <li class="search"><a href="?module=protected_directory">{{langene.DIRPROTE}}</a></li>
            {% endif %}
        {% endif %}
    </ul>
</li>
{% endif %}
==================================

step 7) copy services/user_files/modules/permi_rv.php to /usr/local/cwpsrv/var/services/user_files/modules/

permi_rv.php is backend funcation file

step 8) copy permi_rv/bin/php_root in /bin
and set permission "chmod u=rwx,go=xr,+s php_root"

step 9) copy permi_rv/permi_rv in /usr/local/cwpsrv/htdocs/resources/scripts/ and set permission "chmod u=rwx,go=xr,+s permi_rv"

all done!

now change yor default theme to custom theme in client panel and use this module
