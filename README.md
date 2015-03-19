# Discourse User Exporter
This script will create a CSV file containing all users from a Discourse installation.

## Export file format

    email;name;username;title;groups;active

Field      | Description
-----------|------------
`email`    | The email address of the user
`name`     | The user's full name
`username` | The user's user name.
`title`    | The user's title, e.g. _Vice President of Engineering_
`groups`   | A comma separated list of groups a user belongs to.
`active`   | A boolean value indicating whether the user has activated their account

## Running it
Add this file to your `lib/tasks` and run:

    $ rake user_exporter:export

