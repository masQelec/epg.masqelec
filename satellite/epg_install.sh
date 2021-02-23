#!/bin/bash

# Borramos configuración actual de TVH

	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/bouquet/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/channel/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/epggrab/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/input/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/profile/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/service_mapper/
	rm -rf /storage/.kodi/userdata/addon_data/service.tvheadend43/xmltv/
	
#Descargarmos EPG
wget -P /storage/ https://raw.githubusercontent.com/masQelec/epg.masqelec/master/satellite/epg.tar.gz
tar -xzvf /storage/epg.tar.gz

kodi-send --action="Notification(AVISO,Canales Actualizados,10000)"

rm -f /storage/epg.tar.gz

systemctl restart service.tvheadend43

