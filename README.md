Adhoc.rb: Ad-hoc Service Discovery for Ruby
===========================================

Ad-hoc service discovery and routing for DNS-SD (aka Bonjour) and XMPP (per
the XEP-0030 spec).

### About DNS Service Discovery (DNS-SD)

* <http://www.dns-sd.org/>
* <http://en.wikipedia.org/wiki/Bonjour_(software)>

### About XMPP Service Discovery (XEP-0030)

* <http://xmpp.org/extensions/xep-0030.html>

Examples
--------

    require 'adhoc'

### Discovering HTTP services

    Adhoc.discover!(:http) do |service|
      puts service.to_uri
    end

### Discovering services with a timeout

    # Print anything we can discover within 3 seconds:
    Adhoc.discover!(:http, :timeout => 3.0) do |service|
      puts service.to_uri
    end

### Discovering services from the command line

    % adhoc discover http sftp ssh
    Discovering services: http, sftp, ssh...
    <sftp://macbook.local.:22> My MacBook
    <ssh://macbook.local.:22> My MacBook
    <http://macpro.local./> My Mac Pro
    <sftp://macpro.local.:22> My Mac Pro
    <ssh://macpro.local.:22> My Mac Pro

Documentation
-------------

* <http://adhoc.rubyforge.org/>

Download
--------

To get a local working copy of the development repository, do:

    % git clone git://github.com/bendiken/adhoc.git

Alternatively, you can download the latest development version as a tarball
as follows:

    % wget http://github.com/bendiken/adhoc/tarball/master

Requirements
------------

* [DNSSD](http://rubyforge.org/projects/dnssd) (>= 1.3.1)
* [XMPP4R](http://home.gna.org/xmpp4r) (>= 0.5)

Installation
------------

The recommended installation method is via RubyGems. To install the latest
official release from Gemcutter, do:

    % [sudo] gem install adhoc

Resources
---------

* <http://adhoc.rubyforge.org/>
* <http://github.com/bendiken/adhoc>
* <http://gemcutter.org/gems/adhoc>
* <http://rubyforge.org/projects/adhoc/>
* <http://raa.ruby-lang.org/project/adhoc>

Author
------

* [Arto Bendiken](mailto:arto.bendiken@gmail.com) - <http://ar.to/>

License
-------

Adhoc.rb is free and unencumbered public domain software. For more
information, see <http://unlicense.org/> or the accompanying UNLICENSE file.
