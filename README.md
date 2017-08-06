# mruby-mkdir-p   [![Build Status](https://travis-ci.org/mgi166/mruby-mkdir-p.svg?branch=master)](https://travis-ci.org/mgi166/mruby-mkdir-p)
dir class
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
p dir.hi
#=> "hi!!"
t = dir.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
