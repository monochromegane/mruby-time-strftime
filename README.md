# mruby-time-strftime   [![Build Status](https://travis-ci.org/monochromegane/mruby-time-strftime.svg?branch=master)](https://travis-ci.org/monochromegane/mruby-time-strftime)

Time#strftime

## example

```ruby
p Time.now.strftime('%c')
#=> "Sat Jan  2 03:04:05 2016"
```

## Format directives

| format | description                                                       |
| ------ | ----------------------------------------------------------------- |
| Y      | Year with century if provided, will pad result at least 4 digits. |
| C      | year / 100 (rounded down such as 20 in 2009)                      |
| y      | year % 100 (00..99)                                               |
| m      | Month of the year, zero-padded (01..12)                           |
| B      | The full month name (January)                                     |
| b      | The abbreviated month name (Jan)                                  |
| h      | Equivalent to %b                                                  |
| d      | Day of the month, zero-padded (01..31)                            |
| e      | Day of the month, blank-padded ( 1..31)                           |
| j      | Day of the year (001..366)                                        |
| H      | Hour of the day, 24-hour clock, zero-padded (00..23)              |
| k      | Hour of the day, 24-hour clock, blank-padded ( 0..23)             |
| I      | Hour of the day, 12-hour clock, zero-padded (01..12)              |
| l      | Hour of the day, 12-hour clock, blank-padded ( 1..12)             |
| P      | Meridian indicator, lowercase (am or pm)                          |
| p      | Meridian indicator, uppercase (AM or PM)                          |
| M      | Minute of the hour (00..59)                                       |
| S      | Second of the minute (00..60)                                     |
| L      | Millisecond of the second (000..999)                              |
| Z      | Abbreviated time zone name or similar information. (OS dependent) |
| A      | The full weekday name  (Sunday)                                   |
| a      | The abbreviated name (Sun)                                        |
| u      | Day of the week (Monday is 1, 1..7)                               |
| w      | Day of the week (Sunday is 0, 0..6)                               |
| s      | Number of seconds since 1970-01-01 00:00:00 UTC.                  |
| %      | Literal `%` character                                             |
| c      | date and time (%a %b %e %T %Y)                                    |
| D      | Date (%m/%d/%y)                                                   |
| F      | The ISO 8601 date format (%Y-%m-%d)                               |
| v      | VMS date (%e-%^b-%4Y)                                             |
| x      | Same as %D                                                        |
| X      | Same as %T                                                        |
| r      | 12-hour time (%I:%M:%S %p)                                        |
| R      | 24-hour time (%H:%M)                                              |
| T      | 24-hour time (%H:%M:%S)                                           |


## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'monochromegane/mruby-time-strftime'
end
```

## TODO

- Format for week number of the year (`%U`, `%W`)
- Flags (`^`, `#`, `-`, `_`, `0`, `number`)

## License

[MIT](https://github.com/monochromegane/mruby-time-strftime/blob/master/LICENSE)

## Author

[monochromegane](https://github.com/monochromegane)
