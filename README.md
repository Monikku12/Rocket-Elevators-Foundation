# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* System requirements
  If using Windows, "Windows Subsystem for Linux" (WSL) should be installed
    Windows 11: https://www.howtogeek.com/744328/how-to-install-the-windows-subsystem-for-linux-on-windows-11/
    Windows 10: https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10
  Unbuntu should also be installed for Windows users
    https://apps.microsoft.com/store/detail/ubuntu-2204-lts/9PN20MSR04DW?hl=en-ca&gl=CA

* Ruby version
  You should install ruby 2.7.6
  it is recommended to use Rails version 5.2.7.1
    On Windows: https://gorails.com/setup/ubuntu/22.04
    On Mac: https://gorails.com/setup/osx/12-monterey

* System dependencies
  MySQL: https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-22-04
  PostgreSQL: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-22-04
  See gem files for more infos about uploaded gems necessary

* Database creation
  DBeaver community : https://dbeaver.io/download/

* Database initialization
  To initialize the database:
    1- be sure to have your mySQL and postgreSQL server started. 
    2- to setup the database, run the command: rails db:setup
    3- to fill your database with fake data and see all the information in the back office, run the command: rails fake:data
  From the website, a login panel will get you to the admin section. You will be able to manage your users, your employees and the quotes requested by your clients.

* Deployment instructions
  Go to www.monichan.com to checkout all the functionalities of the website

* GEM files used
    - Devise, Rail admin, Cancancan are the gems used to create the back admin panel that helps us manage the some of the website functions  
    - Secondbase is a database helper (https://github.com/customink/secondbase)
    - PG is a postgresql ruby interface (https://github.com/ged/ruby-pg)
    - Faker is our data generator for our tables (https://github.com/faker-ruby/faker)
    - Rubocup-faker is a Faker extension that helps us autocorrect our commands (https://github.com/koic/rubocop-faker)
    - I18n gem helped us with the localization of our data (https://github.com/svenfuchs/rails-i18n)
    - Groupdate is a gem used to group datas by dates to answer different questions (https://github.com/ankane/groupdate)
    - slack-notifier is the gem used to work with the slack API for slack notification

* To install the gem for Twilio (https://rubygems.org/gems/twilio-ruby/versions/4.11.1)  
  This gem is enabling us to use Twilio with our website as an API.
  
* To install the gem for Googlemaps (https://rubygems.org/gems/gmaps4rails)
  This gem is enabling us to geolocalize the customer on a map and display statistics on a location of their building (markers). These informations are available only to authenticated users of the website, through the admin section.

* API
  Twilio: To send sns alerts
  Slack: Generate history events for technical staff
  FreshDesk: Generate ticket for support staff
  Google Maps: To visualize contracts' locations
  Dropbox: Get attached files fron previous contact requests and associate them to new customers

* Freshdesk
  To use Freshdesk first you need to open the dashboard on https://codeboxx3519.freshdesk.com/
    Click on the [login] icon in the upper right
    Your e-mail address: monique.kaigawa@gmail.com
    Password: Codeboxx1!
  Once logged in, you will be automatically directed to the dashboard and see all the tickets in treatment.

* Twilio
  This API sends you a text notification when an elevator's status is set to "inactive". 
  To set an elevator to "inactive", go to the Rocket Elevators website, click on LOGIN in the top menu (it's on the right side) and log yourself in. One logged in, click on the elevators link. This will brings you to a table with all the elevators listed. Choose an elevator and click on the little information icon "i" on the right. A pop-up window will appear. In the field status, write "inactive" and save the modification by clicking the button at the bottom. You should then receive the text message.

* Dropbox
  Couldn't be implemented due to admin bug, that rended any testing impossible. See dropbox branch for further information.

* API requests
  To access the repo for the API requests, please see this link: 
  https://github.com/Monikku12/Rocket-Elevators-Foundation-API.git
  An easy way to test the request is to use Postman (https://www.postman.com/).
  Once on the site, follow the sign in instructions. 
  You can call your request by importing this link:
  https://www.getpostman.com/collections/f0f25068a6e5acfacd3d
  You will have access to the collection corresponding to this application.