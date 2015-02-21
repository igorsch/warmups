#!/usr/bin/env ruby

number = rand(1..10)

loop do
  print 'Guess a number between 1 and 10? '
  guess = gets.chomp.to_i
  if guess > number
    puts 'Too high'
  elsif guess < number
    puts 'Too low'
  else
    puts 'You got it.'
    break
  end
end
