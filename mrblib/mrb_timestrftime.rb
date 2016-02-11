class Time
  module StringFormatable

    AMPM   = %w(AM PM)
    DAYS   = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
    MONTHS = %w(January February March April May June July August September October November December)

    def strftime(format)
      format = format.dup
      while index = format.index('%') do
        f = format[index+1]
        break unless f

        format.gsub!("%#{f}", format_to_time(f))
      end
      format
    end

    private

    def format_to_time(f)
      case f
      when 'A', 'a'
        a = DAYS[wday]
        f == 'A' ? a : a[0..2]
      when 'B', 'b', 'h'
        m = MONTHS[month-1]
        f == 'B' ? m : m[0..2]
      when 'C'
        '%02d' % (year/100).to_i
      when 'c'
        '%a %b %e %H:%M:%S %Y'
      when 'D'
        '%m/%d/%y'
      when 'd', 'e'
        ( f == 'd' ? '%02d' : '%2d' ) % day
      when 'F'
        '%Y-%m-%d'
      when 'H', 'k'
        ( f == 'H' ? '%02d' : '%2d' ) % hour
      when 'I', 'l'
        v = hour
        v = 12  if v == 0
        v -= 12 if v > 12
        ( f == 'I' ? '%02d' : '%2d' ) % v
      when 'j'
        '%03d' % yday
      when 'L'
        '%03d' % ( usec / 1000 )
      when 'M'
        '%02d' % min
      when 'm'
        '%02d' % month
      when 'P', 'p'
        ampm = hour < 12 ? AMPM[0] : AMPM[1]
        f == 'P' ? ampm : ampm.downcase
      when 'R'
        '%H:%M'
      when 'r'
        '%I:%M:%S %p'
      when 'S'
        '%02d' % sec
      when 's'
        '%1d' % to_i
      when 'T'
        '%H:%M:%S'
      else
        ''
      end
    end
  end
end

class Time
  include StringFormatable
end
