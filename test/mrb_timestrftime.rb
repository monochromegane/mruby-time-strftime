##
## TimeStrftime Test
##

assert("Time#strftime with %A and %a") do
  time = Time.new(2016, 1, 1)
  time.strftime('%A')

  assert_equal('Friday', time.strftime('%A'))
  assert_equal('Fri',    time.strftime('%a'))
end

assert("Time#strftime with %B, %b and %h") do
  time = Time.new(2016, 1, 1)
  time.strftime('%A')

  assert_equal('January', time.strftime('%B'))
  assert_equal('Jan',     time.strftime('%b'))
  assert_equal('Jan',     time.strftime('%h'))
end
