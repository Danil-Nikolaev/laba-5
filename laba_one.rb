# frozen_string_literal: true

require 'date'

# This class for laboratory one
class LaboratoryOne
  def part_one(num)
    Math.sin(num) / (num**3 - 5) + num**2 - 2 * Math.exp(num) if num != 5**(1.0 / 3) && num.is_a?(Integer)
  end

  def part_two(day)
    return nil unless day.is_a?(Integer)

    date_array = (1..day).map { |i| Date.new(2021, 1, 1) + i }
    degrees_array = (1..day).map { Random.rand(-30..10) }
    print "#{'-' * 21}\ndate#{' ' * 10}degrees\n#{'-' * 21}\n"
    date_array.each_index { |i| p date_array[i].strftime('%d %b %Y') + ' ' * 5 + degrees_array[i].to_s }
    arr = degrees_array.each_index.select { |i| degrees_array[i] < -10 }
    print "#{'-' * 21}\ndate#{' ' * 10}degrees\n#{'-' * 21}\n"
    arr.each { |i| p date_array[i].strftime('%d %b %Y') + ' ' * 5 + degrees_array[i].to_s }
    day
  end

  def part_three(str_array)
    str_array = str_array.map { |i| i.split(' ') }
    new_str_arr = []
    str_array.each_with_index do |i, index|
      i.each_index.select { |j| (j + 1).even? }.each { |j| str_array[index][j - 1] = str_array[index][j] }
      new_str_arr << i.join(' ')
    end
    new_str_arr
  end
end
