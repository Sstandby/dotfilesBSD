
#sxhkd & /usr/local/bin/setxkbmap/ -model pc105 -layout es & xterm &
#exec /usr/local/bin/musicpd ~/.mpd/musicpd.conf
#exec efce4-sessio
#LANG=es_ES.ISO8859-15; export LANG
#setenv LANG es_ES.ISO8859-15



#----------------------
#Poner teclado en ES
#----------------------

#export LANG=es_ES.UTF-8
#export LC_ALL=es.ES.UTF-8
setxkbmap es

#----------------------
# fondo de pantalla
#----------------------

feh --bg-fill /home/standby/Wallpaper/background/back3.jpg

#----------------------
#Ejecutar
#----------------------

#----------------------
#WM
#----------------------

#exec /usr/local/bin/bspwm
#cwm v 1>~/cwm.log 2>&1
exec /usr/local/bin/cwm
