class PrimeGenerator

  # attr_accessor :max_value

  # def initialize(num = nil)
  #   if !num.nil?
  #     raise unless num.is_a?(Integer)
  #   end
  #   @max_value = num
  # end
  #

  def primes_up_to(max_value)
    sieve = Array(2..max_value)

    primes = []
    while sieve.size > 0
      value = sieve.shift
      primes.push(value)
      sieve.reject!{|element| element % value == 0}
    end
    primes
  end

  def print_table
    puts @max
    @max
  end

end