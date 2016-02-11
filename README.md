# mruby-time-strftime   [![Build Status](https://travis-ci.org/monochromegane/mruby-time-strftime.svg?branch=master)](https://travis-ci.org/monochromegane/mruby-time-strftime)
TimeStrftime class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'monochromegane/mruby-time-strftime'
end
```
## example
```ruby
p TimeStrftime.hi
#=> "hi!!"
t = TimeStrftime.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
