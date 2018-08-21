# MusicDB

A playground for experimenting with Ecto.

## Installation

### Prerequisites

   * Elixir >= 1.5 (1.7 recommended)
   * PostgreSQL >= 9.0 (MySQL or SQLite may work - see "Other Databases" below)

### Setup

Clone the repo, then run:

```bash
bin/setup
```

This will check for Elixir, load dependencies, setup the database, and run a few smoke tests to verify that the app is communicating with the database.

If all goes well, you'll see this at the end:

```bash
Setup complete - everything looks good! 👍
```

## Database Configuration

By default, the app will attempt to connect to the database using your system username as the username and an empty password. If your database needs different credentials, you'll need to set up the following environment variables before running `bin/setup`:

```bash
export DATABASE_USERNAME=[your username]
export DATABASE_PASSWORD=[your password]
```

## Other Databases

This is app has been tested with PostgreSQL, but other databases supported by Ecto may work. If you want to use a different database, you'll need to:

   1. Add the database driver as a dependency in the `deps` function in `mix.exs`
   1. Change the `adapter` setting in `config/dev.exs` and `config/test.exs`

See the [Ecto README](https://github.com/elixir-ecto/ecto) for a list of supported adapters and driver dependencies.
