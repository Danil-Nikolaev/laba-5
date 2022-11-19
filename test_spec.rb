# frozen_string_literal: true

require_relative 'laba_one'
require 'faker'
gem 'rspec'
gem 'rspec-core'

RSpec.describe LaboratoryOne do
  test_object = LaboratoryOne.new
  describe '#part_one' do
    it 'return -2 for x ==0' do
      expect(test_object.part_one(0)).to eq(-2)
    end
    it 'return true random number' do
      array_number = (1..100).map { Random.rand(-30..10) }
      array_number_bool = false
      array_number_bool = true if array_number.select { |num| test_object.part_one(num).nil? }.empty?
      expect(array_number_bool).to eq(true)
    end
    it 'return false random string' do
      array_string = Random.rand(22..51).times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(' ')
      array_string_bool = false
      array_string_bool = true if array_string.split.reject { |num| test_object.part_one(num).nil? }.empty?
      expect(array_string_bool).to eq(true)
    end
    it 'return nil for x == 5**(1/3)' do
      number_bool = false
      number_bool = true if test_object.part_one(5**(1.0 / 3)).nil?
      expect(number_bool).to eq(true)
    end
  end
  describe '#part_two' do
    it 'return true random number' do
      array_number = (1..100).map { Random.rand(1..30) }
      array_number_bool = false
      array_number_bool = true if array_number.select { |num| test_object.part_two(num).nil? }.empty?
      expect(array_number_bool).to eq(true)
    end
    it 'return false random float number' do
      array_number = (1..100).map { Random.rand(1.0..30.0) }
      array_number_bool = false
      array_number_bool = true if array_number.reject { |num| test_object.part_two(num).nil? }.empty?
      expect(array_number_bool).to eq(true)
    end
    it 'return false random string' do
      array_string = Random.rand(22..51).times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(' ')
      array_string_bool = false
      array_string_bool = true if array_string.split.reject { |num| test_object.part_two(num).nil? }.empty?
      expect(array_string_bool).to eq(true)
    end
  end
  describe '#part_three' do
    it 'check for random string' do
      str_array = Faker::Lorem.sentences(number: 20)
      str_array_sort = []
      check_para = true
      str_array = test_object.part_three str_array
      str_array.each do |i|
        i_arr = i.split
        i_arr.pop unless i.split.length.even?
        i_arr.each_slice(2) { |j| str_array_sort.push(j) }
        str_array_sort = str_array_sort.reject { |j| j[0] == j[1] }
        check_para = false unless str_array_sort.empty?
        str_array_sort = []
      end
      expect(check_para).to eq(true)
    end
  end
end
