# Releasing Mongoid::Compatibility

Release bug fixes as needed, features as desired, and breaking API changes only when necessary, following semantic versioning.

## Prepare

On a clean, up-to-date `master`, run the tests and make sure the latest [GitHub Actions](https://github.com/mongoid/mongoid-compatibility/actions) checks pass.

```sh
bundle install
bundle exec rake
```

Set `VERSION` in [lib/mongoid/compatibility/self.rb](lib/mongoid/compatibility/self.rb), date the matching heading in [CHANGELOG.md](CHANGELOG.md) as `### x.y.z (YYYY/MM/DD)`, remove the contribution placeholder, and document new features in [README.md](README.md). Commit and push the changes, and wait for CI to pass.

## Publish

```sh
bundle exec rake release
```

This builds the gem, tags the release, pushes the commit and tag, and publishes the gem to RubyGems.

## Prepare the Next Version

Increment the patch version in [lib/mongoid/compatibility/self.rb](lib/mongoid/compatibility/self.rb), add a `### x.y.z (Next)` section with `* Your contribution here.` to [CHANGELOG.md](CHANGELOG.md), and commit and push the changes.
