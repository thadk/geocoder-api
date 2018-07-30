gadm28_levels.shp.zip:
	wget http://biogeo.ucdavis.edu/data/gadm2.8/gadm28_levels.shp.zip

gadm28_adm2.shp:
	unzip gadm28_levels.shp.zip
	cd gadm28_levels.shp
	mv gad28_adm2.* ..
	rm gadm28_adm{0,1,3,4,5}.*


gadm28_adm2_small_ghana.shp: gadm28_adm2.shp
	mapshaper-xl -i $< \
		-filter '"Gushiegu,Yendi,East Gonja,Savelugu Nanton,Tolon-Kumbungu,West Gonja,Mion,Central Gonja,Karaga,Bole,Tolon".indexOf(NAME_2) > -1' \
		-filter '"GHA".indexOf(ISO) > -1' \
		-o format=shapefile $@

#Gushegu,Yendi,East,Gonja,Savelugu,Kumbugu,West,Gonja,Mion,Central,Gonja,Karaga,Bole,Tolon

gadm28_adm2_small_ghana.sql: gadm28_adm2_small_ghana.shp
	#-a appends, -d drops and recreates, -c creates new table but be aware it puts wrong length on varchar()
	/Applications/postgres.app/contents/versions/10/bin/shp2pgsql -a -I -s 4326 $< public.boundaries > $@

heroku-shapes: gadm28_adm2_small_ghana.sql
	heroku pg:psql -a salty-gorge-12975 < $<

gha_adm2.geojson:
	curl 'https://services3.arcgis.com/ws02YueEUND55usQ/ArcGIS/rest/services/Ghana_District_League/FeatureServer/1/query?where=1=1&outFields=*&returnGeometry=true&f=pgeojson' -o $@

gha_likegadm_adm2.geojson: gha_adm2.geojson gadm36_GHA_gpkg/gha_region_gadm.shp
	mapshaper -i $< \
		-proj +proj=longlat +datum=WGS84 +no_defs from='+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext  +no_defs' \
		-info \
		-points inner name=pt \
		-i $(word 2,$^) name=rg \
		-info \
		-join target=pt source=rg \
		-i $< name=poly \
		-proj +proj=longlat +datum=WGS84 +no_defs from='+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext  +no_defs' target=poly \
		-info \
		-join target=poly source=pt unjoined unmatched \
		-filter-fields target=poly 'CC_1,DISTRICT,ENGTYPE_1,FID,fid,GID_0,GID_1,GlobalID,HASC_1,NAME_0,NAME_1,NL_NAME_1,OBJECTID,REGION,Shape__Area,Shape__Length,TYPE_1,VARNAME_1' \
		-each target=poly 'GID_2=GID_1+"_"+OBJECTID, NAME_2=DISTRICT, VARNAME_2="", NL_NAME_2="", TYPE_2="District", ENGTYPE_2="District", CC_2=CC_1, HASC_2=HASC_1+"."+DISTRICT[0].toUpperCase()+DISTRICT[1].toUpperCase(), CONTINENT="Africa"' \
				-info \
		-o $@ format=geojson


gha_likegadm_adm2_points.geojson: gha_adm2.geojson gadm36_GHA_gpkg/gha_region_gadm.shp
	mapshaper -i $< \
		-proj +proj=longlat +datum=WGS84 +no_defs from='+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext  +no_defs' \
		-info \
		-points inner name=pt \
		-i $(word 2,$^) name=rg \
		-info \
		-join target=pt source=rg \
		-o $@ format=shapefile