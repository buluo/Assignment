# Cut-Off time Service
A RESTful service that can return cut-off times for currency pairs on a given date.

## Solution
This service is implemented in Java using Spring Boot with Gradle. And it connected to the MySQL database. Additionally, this service is designed to be easily integrated with other applications, providing seamless integration into other existing workflow. 

API documentation is available at http://localhost:8080/swagger-ui.html when the application is launched.

### Request Parameters:

`currency1` (string, required): The first currency in the currency pair. The currency code should be in ISO currency format.

`currency2` (string, required): The second currency in the currency pair. The currency code should be in ISO currency format.

`date` (string, required): The date for which to retrieve the cut-off time. The date should be in YYYY-MM-DD format.

It will return the string of cut-off times for currency pairs.

## How to run it?
* Use Navicat to create a new MySQL database and import .sql file.
* To start the service run: *./gradlew bootRun*
* Test service at http://localhost:8080/swagger-ui.html when the application is launched.
