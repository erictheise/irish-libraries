Save spreadsheet as csv
Convert column names to lower case
Run import.py
ALTER TABLE libraries ADD COLUMN lat double precision;
ALTER TABLE libraries ADD COLUMN lon double precision;

UPDATE libraries
SET lat = ST_Y(ST_Transform(ST_GeomFromText(FORMAT('POINT(%s %s)', gis_x, gis_y), 2157), 4326)),
    lon = ST_X(ST_Transform(ST_GeomFromText(FORMAT('POINT(%s %s)', gis_x, gis_y), 2157), 4326))
WHERE gis_x IS NOT NULL AND gis_y IS NOT NULL;

Export using 
\copy libraries to '120416 Libray Basic Data_Open Street Map With Lat Lon.csv' csv header

Verify using leaflet.

