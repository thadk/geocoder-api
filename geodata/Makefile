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
		-simplify dp 5% \
		-o format=shapefile $@

#Gushegu,Yendi,East,Gonja,Savelugu,Kumbugu,West,Gonja,Mion,Central,Gonja,Karaga,Bole,Tolon

gadm28_adm2_small_ghana.sql: gadm28_adm2_small_ghana.shp
	#-a appends, -d drops and recreates, -c creates new table but be aware it puts wrong length on varchar()
	/applications/postgres.app/contents/versions/10/bin/shp2pgsql -a -i -s 4326 $< public.boundaries > $@


