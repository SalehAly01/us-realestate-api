# US real estate API

## Setup the environment

This application requires:

- Ruby 2.4.1
- Rails 5.0.5

**Using RVM**

If you're using RVM then you might want to run

```bash
$ rvm use --create --ruby-2.4.1@us-realestate-api
```

### Installation

Update the database configuration settings according to your environment, then run `bin/setup`.

```bash
$ cd us-realestate-transactions-api
$ bin/setup
```

To date from the csv file to your database run:

```bash
$ rails db:seed
```


After `bin/setup` finishes, run the server.

```bash
$ rails server
```

run test.

```bash
$ rspec
```
