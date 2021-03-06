# BookShelf

The BookShelf is an online library, where users can access books depending on their rights.
User can read books, or even update them(add, delete, edit), if authorized.
Also signed in user is available to rate the quality of the existing books.

For making it easier, to find some specific book, there is a search form, which is searching by author, title or
description of the book, and displaying items user is interested in, if they exist in database.
For same purpose, accessing the author or genre name is linking to a list of books that are related to same author or genre,
accordingly.

## Used Gems

* 'Device' - for implementing authentication (https://github.com/plataformatec/devise)

* 'CanCan' - for implementing the authorization functionality (roles and permission) (https://github.com/ryanb/cancan)

* 'Paperclip' - for implementing the uploading image functionality (https://github.com/thoughtbot/paperclip)

* 'Ratyrate' - for implementing the rating functionality (https://github.com/wazery/ratyrate)

For implementing 'search' functionality was used SQL LIKE.

For styling the application was used Bootstrap.

## Instructions


### To clone repository the following command is necessary:

```
git clone https://github.com/nikaleta/BookShelf
```

### To set up the database the following steps are necessary:

For this application was used postgresql.

Feel the fields in /config/database.yml file:

```
adapter: postgresql

username: YOUR_USER_NAME

password: YOUR_PASSWORD
```

### To initialize the database:

`rake db:create`

### To run the migrations:

`rake db:migrate`

### To seed the database with default values:

`rake db:seed`

Last command will create in database all that is contained it ```seed.rb``` file, to make possible to test the application.
