Mongoid::Compatibility
=======================

[![Gem Version](http://img.shields.io/gem/v/mongoid-compatibility.svg)](http://badge.fury.io/rb/mongoid-compatibility)
[![Build Status](http://img.shields.io/travis/mongoid/mongoid-compatibility.svg)](https://travis-ci.org/mongoid/mongoid-compatibility)
[![Dependency Status](https://gemnasium.com/mongoid/mongoid-compatibility.svg)](https://gemnasium.com/mongoid/mongoid-compatibility)
[![Code Climate](https://codeclimate.com/github/mongoid/mongoid-compatibility.svg)](https://codeclimate.com/github/mongoid/mongoid-compatibility)

Compatibility helpers for Mongoid versions 2, 3, 4, 5, 6 and 7.

### Install

Add `mongoid-compatibility` to your Gemfile.

```
gem 'mongoid-compatibility'
```

You may explicitly need to `require mongoid/compatibility`.

### Use

#### Mongoid::Compatibility::Version

``` ruby
Mongoid::Compatibility::Version.mongoid2?
  # => is this Mongoid 2.x?

Mongoid::Compatibility::Version.mongoid3?
  # => is this Mongoid 3.x?

Mongoid::Compatibility::Version.mongoid4?
  # => is this Mongoid 4.x?

Mongoid::Compatibility::Version.mongoid5?
  # => is this Mongoid 5.x?

Mongoid::Compatibility::Version.mongoid6?
  # => is this Mongoid 6.x?

Mongoid::Compatibility::Version.mongoid7?
  # => is this Mongoid 7.x?
```

Instead of checking for Mongoid 6 and 7, use `newer` and `older` helpers.

``` ruby
Mongoid::Compatibility::Version.mongoid6_or_newer?
  # => is this Mongoid 6.x or 7.x, including beta 7?

Mongoid::Compatibility::Version.mongoid5_or_older?
  # => is this Mongoid 2.x, 3.x, 4.x or 5.x?
```

#### Mongoid::Compatibility::ObjectId

``` ruby
Mongoid::Compatibility::ObjectId.legal?('4e4d66343b39b68407000001')
  # => is this a valid BSON ID?
```

### Contribute

See [CONTRIBUTING](CONTRIBUTING.md).

### Copyright and License

Copyright Daniel Doubrovkine and Contributors, Artsy Inc., 2015-2017

[MIT License](LICENSE.md)
