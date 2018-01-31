# first working "sudo ./install"

# M1N-D3V-3NV1R0

:::  Deployment environment for Debian 9 GNU/Linux Stretch, in a minimal desktop with antivirus and NIDS. 

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

* no workaround to install wifi firmware (I have)

* serv-if-up too hevy load

* shi3lD may not work, if your network is down. $(interface) overwrites it selft

* install:

  while installing snort: debconf asks for interface eth0 no workaround for "eno[0-9]" interfaces
  
  Take a look in to "ip route show" and "sudo dpkg --configure -a" with the name of your interface.

# TODO:

* serv-if-up's loop or something

* shi3lD is overwriting var $interface
  
  Workaround to change the user-agent while changing the MAC - addresses.

* sCRYPtUPdater

  To search for brackets and braces, to split the content of the source code into short code snippets.
  If the workflow interval in minutes is over, refer to the exit handler, if false, reset workflow interval, if true exit.
  Scan in ~/ for file suffixes or the header with dd, to determine the working directory.
  Implement Programmable Completion, to auto-complete the command sequence with the [Tab] key.

* mindevenviro.rules

  iptables drop rules for /etc/snort/rules/

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

snort scrot playonlinux mupdf terminator xul-ext-ublock-origin firefox-esr vlc feh xclip geany transmission xscreensaver vtwm oss-compat alsa-utils x11-apps xdm xorg zip rar openssl clamav-freshclam clamav-milter clamdscan clamav-daemon clamav-base clamav mysql-server php7.0 dwww apache2 git sendmail python-gtk2-dbg shellcheck libcgi-pm-perl perl fortunes figlet mc mutt eject nano nmon 

# USAGE:

* Login just to X. Click with the mouse.

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

* terminator

  Multiple GNOME terminals in one window.

# Files:

* in ~/

  .wH0rUNSon    # Depends on sCRYPtUPdater; $USER workflow control.
  
  .[MonthYear].mac_recieves_dhcp_lease      # Depends on shi3lD, a list of working MAC's addresses.

  .[MonthYear].mac_no_dhcp_lease      # Depends on shi3lD, a list of NOT working MAC's addresses.

  .installed      # The list of the installed components.
  
  .vendorsmac     # The list of the vendors MAC-Adresses.

  .twmrc # VTWM's Layout

  .config/mc/ini  # Midnight Commander's Layout
  
  .config/terminator/config   # Terminator's Layout
  
  .Xresources     # Login Mask

  .xscreensaver   # Screen Saver's config
  
* ~/Music

  76256__ganscaile__startup.mp3     # startup sound
  
* ~/Pictures

  wallpapers.zip  # unpacked Pictures for feh-bg
  
* in /usr/local/bin

  shi3lD          # network-manager

  start_shield    # Depends on shi3lD.

  stop_shield     # Depends on shi3lD.

  serv-if-up      # Depends on shi3lD, background process, restarts servers.

  sCRYPtUPdater   # Syntax check and update to the path.

  feh-bg          # changes the background on vtwm.
  
  hi              # startup
  
  hi_firefox-esr
  
  hi_geany
  
  hi_playonlinux
  
  hi_transmission-gtk
  
  hi_vlc
  
  hi_wicd-client
  
  mysql_cp_db     # MySQL and administration
  
  search          # Search and display if to grep true with less.
  
  snortup         # restart's snort if wifi accessed.
  
  check           # display's status of snortup and clamd

* in ~/min-dev-enviro

  sources.list    # HTTP Web source of debian Stretch
  
  install         # install script of min-dev-enviro
  
* in /usr/share/vlc/skins2/

  default.vlt

  169311-inkyV2.vlt

  STRYPER-VLC.vlt
  
  Slick Iphone Skin.vlt

* in /var/www/html/

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
