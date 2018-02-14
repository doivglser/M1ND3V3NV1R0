![bild01](https://github.com/doivglser/M1ND3V3NV1R0/blob/master/addjus01.jpg)
![bild02](https://github.com/doivglser/M1ND3V3NV1R0/blob/master/addjus02.jpg)
![bild03](https://github.com/doivglser/M1ND3V3NV1R0/blob/master/addjus03.jpg)

# M1ND3V3NV1R0

	Deployment Environment for Web Applications and System Administration 
	for Debian 9 GNU/Linux Stretch in a Minimal Desktop with Antivirus, 
	NIDS and Great Multimedia Experience.

- For Debian GNU/Linux.

- Antivirus engine ClamAV and NIDS solution Snort.

- Checks syntax with "python -m pgb", "perl -wc", "shellcheck -e" and "php -l".

- Changes your MAC, to obtain a new IP, "ctrl+C" quit's and revert the connected interface, to vendor's MAC.

- Web surfing with Firefox-ESR and local/web media experience with VLC.

- PlayOnLinux, to install win32 and win64 MS-Windows applications.

- Restarts apache2, mysqld, sendmail, snort, clamd.

- Search script and MySQL(MariaDB) maintainers script.

- For programmers and administrators.

# PROBLEMS:

* no workaround to install wifi firmware.

* shi3lD may not work.

* while installing:

	while installing snort: debconf asks for interface eth0 no 
	workaround for "eno[0-9]" interfaces. Take a look in to "ip route show" and 
	"sudo dpkg --configure -a" with the name of your interface.
	
	While installing mysql-server, there has no password for root.
	
	./install :		workaround no password in /etc/mysql/debian.cnf
				wont work properly.
				
	set_mysql_passwd	the same workaround as in ./install
				don't work properly, I have no 
				sed syntax to handle var's

# TODO:

*	install joomla CMS

*	I search for the right MySQL syntax to delete id's.

* 	wget install script from github.com dogitable(){Login / 
	su - / apt-get update / apt-get -f -y -m install sudo git
	/ nano /etc/sudoers / search for "root	ALL=(ALL:ALL) ALL", copy the line and do a new entry with
	your username, like "my_username	ALL=(ALL:ALL) ALL" / save ctrl+X / ctrl+D / 
	cd / git clone https://github.com/doivglser/min-dev-enviro.git / ctrl+D / 
	login again ... / cd min-dev-enviro /}
  
* shi3lD is overwriting var $interface. To change the "user-agent" while changing the MAC - addresses.

* sCRYPtUPdater

  To search for brackets and braces, to split the content of the source code into short code 
  snippets. If the workflow interval in minutes is over, refer to the exit handler, if false, 
  reset workflow interval, if true exit. Scan in ~/ for file suffixes or the header with dd, 
  to determine the working directory. Implement Programmable Completion, to auto-complete the 
  command sequence with the [Tab] key.

* mindevenviro.rules, "iptables" drop rules for /etc/snort/rules/
  
* GUI's

* ncurses

# Requirements:

- A fresh base-install of Debian GNU/Linux 9 Stretch.
- Choose netinst CD image, and burn it on a blank CD-R.
- Debian 9 GNU/Linux Stretch: https://www.debian.org/releases/stretch/debian-installer/
- While installing: 

  Choose a root and an user password,
  Guided - use entire disk and set up envrypted LVM,
  Separate /home, /var, and /tmp partitions,
  Don't choose any desktop or servers, 
  but standard system utilities.
  
- Root access, to make an entry for $USER in the /etc/sudoers file
- An Internet connection

# Install

* ivo@x0x:~/min-dev-enviro$ sudo ./install 

  Installs the deployment environment and the minimal desktop with antivirus and NIDS:

  snort wicd brutalchess libreoffice-writer tidy cheese gimp scrot mupdf terminator playonlinux wine64 wine64-tools 
  wine64-preloader xul-ext-ublock-origin firefox-esr vlc feh xclip geany transmission openvpn xscreensaver vtwm 
  oss-compat alsa-utils xcompmgr x11-apps xdm xorg zip rar openssl clamav-freshclam clamav-milter clamdscan 
  clamav-daemon clamav-base clamav mysql-client mysql-server php7.0 php7.0-cli php7.0-mcrypt php7.0-intl 
  php7.0-mysql php7.0-curl php7.0-gd php7.0-soap php7.0-xml php7.0-zip php7.0-readline php7.0-opcache 
  php7.0-json php7.0-gd dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl 
  fortunes figlet mc mutt eject nano nmon  

# USAGE:

* Login to X

  "Right click"	 : Change Background
  
  "Middle Click" : VTWM Version
  
  "Left click"	 : Application Menu
 
  "F12"		 : cycles windows down
  
  "F10"		 : cycles windows up

# On vtwm:

* Firefox-ESR

  type: localhost/dwww for dwww. ( dwww collects information from /usr/share/{man,doc} )
  
  type: localhost/testphp for your php stuff.

* VLC 

  Listen to your music and/or videos.
  
* transmission

  lightweight BitTorrent client
  
* geany

  fast and lightweight IDE

* PlayOnLinux (manage's wine win32/win64)

  Install: win32 and win64 MS-Office applications and Games

* terminator (Multiple GNOME terminals in one window.)

  "ctrl+PageUP" cycles TAB to right
  
  "ctrl+PageDOWN" cycles TAB to left
  
  "ctrl+TAB" swap's between Panned TAB's
  
* sCRYPtUPdater (shell script)

  syntax check and copy to path 

* search (shell script)

  search by path and file suffix, if grep true open file

* mysql_cp_db (shell script)

  To rename tables in database, to delete and to dump and restore from .sql file.
  
* redundanz (shell script)

  Puts serv-if-up daemon up and monitors servers reliability.
  
  Depends on: server-monitor, serv-if-up

# SHELL SCRIPTS DOT FILES MEDIA FILES AND CONTENT

# in ~/

   playlist.m3u
   
  .wH0rUNSon
  
  .[MonthYear].mac_recieves_dhcp_lease
  
  .[MonthYear].mac_no_dhcp_lease
  
  .installed
  
  .vendorsmac
  
  .twmrc
  
  .config/mc/ini
  
  .config/terminator/config
  
  .Xresources
  
  .xscreensaver
  
  .bashrc
  
# in ~/Music

  76256__ganscaile__startup.mp3
  
# in ~/Pictures

  wallpapers.zip
  
# in /usr/local/bin

- network

	shi3lD
	start_shield
	stop_shield
	
- syntax|search|edit

	sCRYPtUPdater
	search
	mysql_cp_db
	
- backgroud|startup
		
	feh-bg
	hi 
	hi_cheese
	hi_brutalchess
	hi_libreoffice
	hi_geany
	hi_gimp
	hi_transmission-gtk
	hi_firefox-esr
	hi_playonlinux
	hi_vlc
	hi_wicd-client

- monitoring|reliability

	server-monitor
	serv-if-up
	redundanz
	
- new-install|update

	install
  
# in /usr/share/vlc/skins2/

  MyVLCtheme.vlt

# in /var/www/html/

  README.html

# Coming soon:

  An anonym e-mail solution and a volatile secure account on a RAM-Disk. I want to use phyton, because of some C, 
  C++ libraries. I want to build the GUI in GTK+, because GTK+ is portable.

* https://github.com/doivglser/min-dev-enviro/projects

# Thank's

![LPIC-1](https://www.theurbanpenguin.com/wp-content/uploads/2016/08/LPIC-1-Medium.png)
![Bash](https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/245px-Gnu-bash-logo.svg.png)
![MC](https://midnight-commander.org/chrome/site/MidnightCommander.png)
![vtwm](http://www.xwinman.org/images/vtwm.gif)
![mutt](https://upload.wikimedia.org/wikipedia/commons/e/ef/Mutt.gif)
![Debian](https://www.notebookcheck.net/fileadmin/_processed_/a/4/csm_Debian_logo_81d29e8578.jpg)
![ClamAV](https://www.clamav.net/assets/clamav-trademark.png)
![gnu nano](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Gnu-nano.svg/256px-Gnu-nano.svg.png)
![Apache](http://www.linuxbrigade.com/wp-content/uploads/2014/06/apache318x260.png)
![playonlinux](http://www.playonlinux.com/images/uploads/196.jpg?w=240)
![github](http://www.toolswatch.org/wp-content/uploads/2014/09/logo_GitHub.jpg)
![VLC](https://nightlies.videolan.org/cone-soppera10.png)
![FIREFOX-ESR](http://lh4.googleusercontent.com/-ES6QFwghMpc/Tz5DbjB7zlI/AAAAAAAAA9o/T13MxP5CUrc/s1600/Firefox-ESR.png)
![stackoverflow](http://devlup.com/wp-content/uploads/2011/06/stackoverflow.png)
![transmission](https://itsfoss.com/wp-content/uploads/2015/08/transmission-logo.png)
![google](http://www.fayerwayer.com/up/2008/02/google-07.png)
![Snort](https://www.snort.org/assets/SnortTM.png)
![geany](https://www.linux.com/var/uploads/Image/articles/139882-2.jpg)
![PHP/MySQL](https://disenowebakus.net/imagenes/articulos/aprender-php-mysql-bases-de-datos-paginas-web-dinamicas.jpg)
![Python](http://www.coderdojo-helmond.nl/wp-content/uploads/2015/10/python-programming-assignment-help.png)
![Perl](https://www.textmagic.com/wp-content/themes/textmagic-genesis/assets/vendor/textmagic/marketing/images/api/prog-lang-logos/perl.png)
![terminator](https://i.ytimg.com/vi/mMak2VzRbmc/maxresdefault.jpg)
