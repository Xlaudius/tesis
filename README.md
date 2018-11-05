# README

## Ruby version: <b> 2.5.1
## Rails Version:<b> 5.1.2 
## Docker Version: 18.03.0-ce, build 0520e24

## Database creation

  > docker-compose up -d</br>
  > docker ps to verify web and database are running</br>
  > If both services are running do:</br>
    > docker-compose exec web bin/rails db:create (FIRST TIME ONLY)</br>

## Database initialization
  > docker-compose exec web bin/rails db:migrate</br>
  > docker-compose exec web bin/rails db:seed</br>

## How to run the test suite
`docker-compose exec web bin/rails spec`</br>
NOTE: The tests execute randomly, once the suite is ran, check the start of the message, tests can be both Red of Green, check for conflicts on the Red models.</br>

## Services
  ### web</br>
  * >Main service, here is where the application is launched, commonly known as '`rails s`'.</br>
  > database</br>
    > Postgres Database. Is empty on launch, must do a db:create, db:migrate and db:seed if you want to test locally.</br>
    > Volume: db-data</br>

## Deployment instructions

## Pending Features

# Team Magma </Roberto_Claudio>
## Team Epics [WIP]
* [ ] DO: RSpec 3 Unit Tests for each model (80 minimum)
* [ ] Automatic Assessment
* [ ] Material 
## Mandatory [WIP]
* [ ] [REFACTOR] Models (`presence`)
* [ ] [VIEW] Estimated Assessment 
* * [ ] [ADD] Model
* * [ ] [ADD] Controller
* * [ ] [TEST] Feature
* * [ ] [TEST] Unit
* * [ ] [FEATURE] Estimated assessment
* [ ] [ADD] All materials values
* [ ] [FEATURE] Final material value is: `Material_value` * `Quality` (0.0 ~> 1.0)
 
### CORE
### IMPORTANT
### OPTIONAL
### USEFUL
* [ ] Code linting

# Team Acqua </Alexis_Felipe></BR>
## Team Epics
* [ ] DO:</br>
* [ ] DO: Nested Forms</br>
* [ ] FEAT: Devise</br>
* [ ] FEAT: CanCanCan</br>
## Mandatory Features and views
### ESSENTIAL (v. 1.0)
* [ ] [VIEW] Home
* [ ] [VIEW] New Assessment
* [ ] [VIEW] Single assessment(show)
* [ ] [VIEW] On-the-field Form
* * [ ] [FEATURE] Always-on Camera Button
* * [ ] [FEATURE] Documents and Images attachment
* [ ] [FEATURE] Search
* [ ] [FEATURE] NavBar
* [ ] [FEATURE] Documents and Images attachment

### IMPORTANT
* [ ] [VIEW] New client
* [ ] [VIEW] Client edit
* [ ] [VIEW] Status edit

### OPTIONAL
* [ ] [VIEW] Admin
* [ ] [FEATURE] Add/Remove Users
* [ ] [VIEW] Region/Cities/Provinces
* [ ] [VIEW] Property
* [ ] [VIEW] Material values

EPICS
[ ] Views </br>
[ ] Features </br>
[ ] Authentication</br>
[ ] Authorizations</br>
[ ] Test suite</br>
[ ] Assessment estimated value</br>