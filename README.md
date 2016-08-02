Mongoid::Compatibility
=======================

[![Gem Version](http://img.shields.io/gem/v/mongoid-compatibility.svg)](http://badge.fury.io/rb/mongoid-compatibility)
[![Build Status](http://img.shields.io/travis/mongoid/mongoid-compatibility.svg)](https://travis-ci.org/mongoid/mongoid-compatibility)
[![Dependency Status](https://gemnasium.com/mongoid/mongoid-compatibility.svg)](https://gemnasium.com/mongoid/mongoid-compatibility)
[![Code Climate](https://codeclimate.com/github/mongoid/mongoid-compatibility.svg)](https://codeclimate.com/github/mongoid/mongoid-compatibility)

Compatibility helpers for Mongoid versions 2, 3, 4, and 5, and the **prerelease** version 6.

### Install

Add `mongoid-compatibility` to your Gemfile.

```
gem 'mongoid-compatibility'
```

You may explicitly need to `require mongoid/compatibility`.

### Use

#### Mongoid::Compatibility::Version

```
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
```

#### Mongoid::Compatibility::ObjectId

```
Mongoid::Compatibility::ObjectId.legal?('4e4d66343b39b68407000001')
  # => is this a valid BSON ID?
```

### Contribute

See [CONTRIBUTING](CONTRIBUTING.md).

### Copyright and License

Copyright Daniel Doubrovkine and Contributors, Artsy Inc., 2015

[MIT License](LICENSE.md)
