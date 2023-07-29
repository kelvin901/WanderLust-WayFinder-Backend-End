# README

### Initializing the rails postgresql backend

#### Installing postgresql 

- sudo apt update
- sudo apt install postgresql postgresql-contrib libpq-dev
- psql --version

#### Starting the postgreqsl service

- sudo service postgresql start

#### Starting the project

- cd into the directory and run `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails s` 