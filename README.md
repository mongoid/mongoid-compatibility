Mongoid::Compatibility
=======================

[![Gem Version](http://img.shields.io/gem/v/mongoid-compatibility.svg)](http://badge.fury.io/rb/mongoid-compatibility)
[![Build Status](http://img.shields.io/travis/dblock/mongoid-compatibility.svg)](https://travis-ci.org/dblock/mongoid-compatibility)
[![Dependency Status](https://gemnasium.com/dblock/mongoid-compatibility.svg)](https://gemnasium.com/dblock/mongoid-compatibility)
[![Code Climate](https://codeclimate.com/github/dblock/mongoid-compatibility.svg)](https://codeclimate.com/github/dblock/mongoid-compatibility)

Compatibility helpers for Mongoid 3, 4 and 5.

### Install

Add `mongoid-compatibility` to your Gemfile.

```
gem 'mongoid-compatibility'
```

### Use

```
Mongoid::Compatibility.mongoid3? # => is this Mongoid 3.x?
Mongoid::Compatibility.mongoid4? # => is this Mongoid 4.x?
Mongoid::Compatibility.mongoid5? # => is this Mongoid 5.x?
```

### Contribute

See [CONTRIBUTING](CONTRIBUTING.md).

### Copyright and License

Copyright Daniel Doubrovkine and Contributors, Artsy Inc., 2015

[MIT License](LICENSE.md)
