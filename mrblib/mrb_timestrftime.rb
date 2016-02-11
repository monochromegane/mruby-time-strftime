class Time
  module StringFormatable

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
      else
        ''
      end
    end
  end
end

class Time
  include StringFormatable
end
