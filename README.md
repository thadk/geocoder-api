# geocoder-api

geocoder-api is RESTFull API that provide support for geocoding operations.  

## TODO: move migrations into Heroku release phase so app can easily boot
in less than 90s.
https://help.heroku.com/LSXQDDSI/why-does-my-java-app-crash-with-an-r10-error

## Installing

    $ git clone https://github.com/devgateway/geocoder-api.git
    $ cd geocoder-api
    $ mvn clean install package -DskipTests

Compiled jar will be located under target/geocoder-1.0.jar


## Configuring
Before compiling you should visit the `application.properties` file located under `src/main/resources` folder.

#### Setting HTTP port
    
    server.port = 8083

#### Database configuration

    spring.datasource.url= jdbc:postgresql://localhost:5432/geocoder
    spring.datasource.username=postgres
    spring.datasource.password=admin

Important keep the nexts two line without changes.

    spring.jpa.hibernate.ddl-auto=update
    spring.jpa.generate-ddl=true

####  Static Files Path
The API can serve static files by setting.
 
    geocoder.ui.path=/opt/geocoder-ui/

#### Maximum uploaded file size allowed

    spring.http.multipart.max-file-size=10MB

#### Maximum size allowed for multipart/form-data requests.

    spring.http.multipart.max-request-size=10MB

## Running 

To run the api you should pass the jar file to the java command.

    $ java -server jar target/geocoder-1.0.jar

Let's assign more memory to the JDK.

	$ java -server -Xms1G -Xmx2G -jar target/geocoder-1.0.jar

You can switch application properties file by setting --spring.config.name=prop_name

    $ java -server -Xms1G -Xmx2G  -jar target/geocoder-1.0.jar --spring.config.name=prod


#### First time execution
During the first execution, **Open Aid Geocoder API** creates new tables and inserts required system  data such as countries and IATI codes etc.

order to integrate both systems, you can plug **Open Aid Geocoder** and **AutoGeocoder** sharing the same database. 
During the first execution Manual Coder API will update some of the AutoGeocoder tables and creates additional system tables.


## Importing Country Boundaries 

Country boundaries are an important piece on the manual coding process. We recommend to use Global Administrative Areas 
http://www.gadm.org/ as country boundaries source. 

In order to incorporate boundaries data you should follow the following steps:

    $ wget http://biogeo.ucdavis.edu/data/gadm2.8/gadm28_levels.shp.zip
    $ unzip gadm28_levels.gdb.zip
    $ cd  gadm28_levels.gdb
    $ shp2pgsql -I -s 4326 gadm28_adm2.shp public.boundaries | psql -Upostgres -d geocoder

_* We use admin2.shp since Open Aid Geocoder UI  picks up to second admin level.

Opening the Open Aid Geocoder UI

Once API is running, if geocoder.ui.path has been properly set to geocoder-ui dist folder, you should be able to load the Open Aid Geocoder by opening http://localhost:{API_PORT}.


### API Endpoints

* /filters/all -
    Shows all apps filters in objects like ‘countries’ and ‘years’. 
    Countries/Years represent all the unique countries/years that we have projects for.
* /import: Import a valid IATI XML file. Beside the XML file this endpoint supports parameters such as: 
    * _autoGeocodeAll_ - Indicates if all the projects will be checked by the auto-geocoder tool. 
    * _autoGeocodeAllWithoutLoc_ - Indicates that ONLY projects without a location will be checked by the auto-geocoder tool_
    * _overwriteProjects_  - If the IATI file contains projects that are already in the system (based on the project identifier) then this parameter indicates if we will ignore those projects or if we want to overwrite them.
* /export  Exports a valid IATI XML file with all the projects in the system. If we need to filter the export then we can pass an object including:
	* text - free text that is searched in all Project’s Narratives.
	* countries - a list of ISO2 countries
	* years - a list of years
	* withNoLocation - Boolean that gets only projects with no location
	* pendingVerification - Boolean that gets only projects with pending verification locations
	* verifiedLocation - Boolean that gets only projects that have all the locations verified
* /projects - exports in JSON format all the projects that matched the received search criteria.
    * text - free text that is searched in all Project’s Narratives.
    * countries - a list of ISO2 countries
    * years - a list of years
    * withNoLocation - Boolean that gets only projects with no location
    * pendingVerification - Boolean that gets only projects with pending verification locations
    * verifiedLocation - Boolean that gets only projects that have all the locations verif
* /project/{id} - Request Method GET - This method will return a JSON export with all the critical fields of a Project. The projects is identified by the id received as a parameter
* /project/{id} - Request Method PUT - this method will update a Project. All the new fields are received in the following parameter:
Activity activity
* /project/{id} - Request Method DELETE - this method will delete a particular project received as a parameter
* /boundaries/list - exports a full list of all countries boundaries
* /boundary - exports a FeatureCollection of the country received as parameter.
* /documentref/{locationId} - gets all the documents references that are used to autogeocode a particular location.


## Hardware Requirements
We have tested the suite in the following environments

* Testing Server:
    * OS: Red Hat Enterprise Linux
    * CPU:  Intel(R) Xeon(R) CPU E5-4640 v2 @ 2.20GHz x 2
    * Memory: 8GB Of RAM
* Production Server:
    * OS: Red Hat Enterprise Linux
    * CPU:  Intel(R) Xeon(R) CPU E5-4640 v2 @ 2.20GHz x 2
    * Memory: 30GB Of RAM
* Development Computer 1:
    * OS: Windows 10
    * CPU: Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz, 2904 Mhz, 2 Core(s), 4 Logical Processor(s)
    * Memory: 16GB
* Development Computer 2:
    * OS: Ubuntu
    * CPU: Intel® Core™ i7-3632QM CPU @ 2.20GHz × 8
    * Memory: 16GB


## Geocoder Suite Technical Guide
For detailed installation instructions please look at the technical guide https://drive.google.com/file/d/1QhGoI_syJq3FqO0lm3Zc7j5ziuWro5TK/view
