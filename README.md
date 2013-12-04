# Riemann cookbook
Chef cookbook for deploying and managing [Riemann](http://riemann.io), a
monitoring and stream processing framework.

## Usage
This cookbook is written so you should only have to run `riemann:default`.

The `utilities` recipe installs some handy tools that aren't necessary for
Riemann itself to run, but which you'll almost certainly want in a standard
install. We'll plan to make this more dynamic with time.

The `dashboard` recipe sets up the Riemann dashboard as a runit service.

## Authors
* Simple Finance <ops@simple.com>
* Artur Nowak <mail@anowak.net>

## License
Apache License, Version 2.0

## TODO list
* Non-Ruby client support
* Multi-platform support

