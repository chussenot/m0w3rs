M0w3rs
======

Dependencies
------------

* [diff](https://web.cs.dal.ca/~johnston/unix/diff.html)
* [make](https://www.gnu.org/software/make/manual/make.html)
* [entr(1)](http://entrproject.org/)

Usage
-----

You can run the tests with the `make test` command.
To see more commands just do `make help`.

`entr` binary - [Event Notify Test Runner](https://bitbucket.org/eradman/entr/)
is used to watch changes and autorun specs.

Implementations
---------------

### Ruby

#### Tests
To run specs manually, run `bundle exec rspec`
or `make watch` for autorun with entr.

#### Console
You can load all the stack into a Pry/Irb console with the make console command
