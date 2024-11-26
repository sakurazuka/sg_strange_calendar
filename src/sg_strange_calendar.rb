require 'date'

class SgStrangeCalendar
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def generate()
    output = "#{@year} Su Mo Tu We Th Fr Sa Su Mo Tu We Th Fr Sa Su Mo Tu We Th Fr Sa Su Mo Tu We Th Fr Sa Su Mo Tu We Th Fr Sa Su Mo\n"

    (1..12).each do |month|
      first_day = Date.new(@year, month, 1)

      output += "#{first_day.strftime('%b')} "
      output += ' ' * (first_day.wday * 3)
      (first_day..Date.new(@year, month, -1)).each do |date|
        output += date.day.to_s.rjust(3, ' ')
      end
      output += "\n"
    end

    return output
  end
end
