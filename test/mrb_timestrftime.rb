##
## TimeStrftime Test
##

assert("Time#strftime with %A and %a") do
  time = Time.new(2016, 1, 2)

  assert_equal('Saturday', time.strftime('%A'))
  assert_equal('Sat',      time.strftime('%a'))
end

assert("Time#strftime with %B, %b and %h") do
  time = Time.new(2016, 1, 2)

  assert_equal('January', time.strftime('%B'))
  assert_equal('Jan',     time.strftime('%b'))
  assert_equal('Jan',     time.strftime('%h'))
end

assert("Time#strftime with %C") do
  time = Time.new(2016, 1, 2)

  assert_equal('20', time.strftime('%C'))
end

assert("Time#strftime with %c") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('Sat Jan  2 03:04:05 2016', time.strftime('%c'))
end

assert("Time#strftime with %D and %x") do
  time = Time.new(2016, 1, 2)

  assert_equal('01/02/16', time.strftime('%D'))
  assert_equal('01/02/16', time.strftime('%x'))
end

assert("Time#strftime with %d and %e") do
  time = Time.new(2016, 1, 2)

  assert_equal('02', time.strftime('%d'))
  assert_equal(' 2', time.strftime('%e'))
end

assert("Time#strftime with %F") do
  time = Time.new(2016, 1, 2)

  assert_equal('2016-01-02', time.strftime('%F'))
end

assert("Time#strftime with %H and %k") do
  time = Time.new(2016, 1, 2, 3)

  assert_equal('03', time.strftime('%H'))
  assert_equal(' 3', time.strftime('%k'))
end

assert("Time#strftime with %I and %l") do
  time = Time.new(2016, 1, 2, 3)

  assert_equal('03', time.strftime('%I'))
  assert_equal(' 3', time.strftime('%l'))

  time = Time.new(2016, 1, 2, 0)

  assert_equal('12', time.strftime('%I'))
  assert_equal('12', time.strftime('%l'))

  time = Time.new(2016, 1, 2, 15)

  assert_equal('03', time.strftime('%I'))
  assert_equal(' 3', time.strftime('%l'))
end

assert("Time#strftime with %j") do
  time = Time.new(2016, 1, 2, 3)

  assert_equal('002', time.strftime('%j'))
end

assert("Time#strftime with %L") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('000', time.strftime('%L'))
end

assert("Time#strftime with %M") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('04', time.strftime('%M'))
end

assert("Time#strftime with %m") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('01', time.strftime('%m'))
end

assert("Time#strftime with %P and %p") do
  time = Time.new(2016, 1, 2, 3)

  assert_equal('am', time.strftime('%P'))
  assert_equal('AM', time.strftime('%p'))

  time = Time.new(2016, 1, 2, 15)

  assert_equal('pm', time.strftime('%P'))
  assert_equal('PM', time.strftime('%p'))
end

assert("Time#strftime with %R") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('03:04', time.strftime('%R'))
end

assert("Time#strftime with %r") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('03:04:05 AM', time.strftime('%r'))
end

assert("Time#strftime with %S") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('05', time.strftime('%S'))
end

assert("Time#strftime with %s") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('1451671445', time.strftime('%s'))
end

assert("Time#strftime with %T and %X") do
  time = Time.new(2016, 1, 2, 3, 4, 5)

  assert_equal('03:04:05', time.strftime('%T'))
  assert_equal('03:04:05', time.strftime('%X'))
end

assert("Time#strftime with %u") do
  time = Time.new(2016, 1, 2)

  assert_equal('6', time.strftime('%u'))

  time = Time.new(2016, 1, 3)

  assert_equal('7', time.strftime('%u'))
end

assert("Time#strftime with %v") do
  time = Time.new(2016, 1, 2)

  assert_equal(' 2-Jan-2016', time.strftime('%v'))
end

assert("Time#strftime with %w") do
  time = Time.new(2016, 1, 2)

  assert_equal('6', time.strftime('%w'))

  time = Time.new(2016, 1, 3)

  assert_equal('0', time.strftime('%w'))
end

assert("Time#strftime with %Y") do
  time = Time.new(2016, 1, 2)

  assert_equal('2016', time.strftime('%Y'))
end

assert("Time#strftime with %y") do
  time = Time.new(2016, 1, 2)

  assert_equal('16', time.strftime('%y'))
end

assert("Time#strftime with %Z") do
  time = Time.new(2016, 1, 2)

  assert_equal('LOCAL', time.strftime('%Z'))
end

assert("Time#strftime with %%") do
  time = Time.new(2016, 1, 2)

  assert_equal('%', time.strftime('%%'))
end
