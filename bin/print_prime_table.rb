#!/usr/bin/env ruby

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib")

require 'prime_generator'

# generator = PrimeGenerator.new(100)
# generator.print_table
#
# primes = generator.primes
# puts primes


primes = PrimeGenerator.new.primes_up_to(100).first(10)
matrix = [[nil] + primes]
primes.each_with_index do |p1, i|
  matrix[i+1] = [p1]
  primes.each do |p2|
    matrix[i+1].push(p1 * p2)
  end
end

puts primes.inspect
puts
puts matrix.inspect
puts
matrix.each{|row| puts row.inspect}

puts

matrix.each do |row|

  puts row.map{|element| element.nil? ? '   ' : sprintf('%3i', element)}.join(' ')
end


