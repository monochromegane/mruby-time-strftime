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

  assert_equal('Sat Jan  2 03:04: ', time.strftime('%c'))
end

assert("Time#strftime with %D") do
  time = Time.new(2016, 1, 2)

  assert_equal('01/02/', time.strftime('%D'))
end

assert("Time#strftime with %d and %e") do
  time = Time.new(2016, 1, 2)

  assert_equal('02', time.strftime('%d'))
  assert_equal(' 2', time.strftime('%e'))
end

assert("Time#strftime with %F") do
  time = Time.new(2016, 1, 2)

  assert_equal('-01-02', time.strftime('%F'))
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

  assert_equal('AM', time.strftime('%P'))
  assert_equal('am', time.strftime('%p'))

  time = Time.new(2016, 1, 2, 15)

  assert_equal('PM', time.strftime('%P'))
  assert_equal('pm', time.strftime('%p'))
end
