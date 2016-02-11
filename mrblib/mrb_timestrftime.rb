class Time
  module StringFormatable

    DAYS   = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

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
        f == 'a' ? a[0..2] : a
      else
        ''
      end
    end
  end
end

class Time
  include StringFormatable
end
