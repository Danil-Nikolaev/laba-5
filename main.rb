# frozen_string_literal: true

require_relative 'laba_one'

def partone
  p 'Введите число'
  num = gets.to_i
  ObjectOne.part_one(num)
end

def parttwo
  p 'Введите количество дней за которое нужно узнать температуру'
  day = gets.to_i
  ObjectOne.part_two(day)
end

def partthree
  p 'Введите какое количество строк надо.'
  count = gets.to_i
  str_array = []
  (0...count).each do |i|
    str = gets
    str_array << str
  end
  ObjectOne.part_three(str_array)
end

p 'Лабораторная работа 5'
choise = 0
ObjectOne = LaboratoryOne.new
while choise != 4 do
  print "1 часть\n"
  print "2 часть\n"
  print "3 часть\n"
  print "4.Выход\n"
  choise = gets.to_i
  p partone if choise == 1
  parttwo if choise == 2
  p partthree if choise == 3
  break if choise == 4
end
