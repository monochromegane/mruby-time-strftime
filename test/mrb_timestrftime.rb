##
## TimeStrftime Test
##

assert("Time#strftime with %A") do
  time = Time.new(2016, 1, 1)
  time.strftime('%A')

  assert_equal('Friday', time.strftime('%A'))
  assert_equal('Fri',    time.strftime('%a'))
end
