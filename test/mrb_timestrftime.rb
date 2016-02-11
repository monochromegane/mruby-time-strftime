##
## TimeStrftime Test
##

assert("Time#strftime with %A and %a") do
  time = Time.new(2016, 1, 1)

  assert_equal('Friday', time.strftime('%A'))
  assert_equal('Fri',    time.strftime('%a'))
end

assert("Time#strftime with %B, %b and %h") do
  time = Time.new(2016, 1, 1)

  assert_equal('January', time.strftime('%B'))
  assert_equal('Jan',     time.strftime('%b'))
  assert_equal('Jan',     time.strftime('%h'))
end

assert("Time#strftime with %C") do
  time = Time.new(2016, 1, 1)

  assert_equal('20', time.strftime('%C'))
end

assert("Time#strftime with %c") do
  time = Time.new(2016, 1, 1, 1, 1, 1)

  assert_equal('Fri Jan  :: ', time.strftime('%c'))
end
