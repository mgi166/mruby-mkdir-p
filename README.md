# mruby-mkdir-p   [![Build Status](https://travis-ci.org/mgi166/mruby-mkdir-p.svg?branch=master)](https://travis-ci.org/mgi166/mruby-mkdir-p)

## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :github => 'mgi166/mruby-mkdir-p'
end
```
## example

```ruby
Dir.mkdir_p("a/b")
# => ["a", "a/b", "a/b/c"]

File.exist?("a/b/c")
# => true
File.directory?("a/b/c")
# => true
```

## License
under the MIT License:
- see LICENSE file
