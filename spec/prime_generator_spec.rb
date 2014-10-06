require 'prime_generator'
require 'spec_helper'

describe PrimeGenerator do

  # describe "#new" do
  #   it "raises an error when initialized with a string" do
  #     expect {
  #       PrimeGenerator.new('foo')
  #     }.to raise_error
  #   end
  #
  #   it "succeeds when passed an integer" do
  #     PrimeGenerator.new(10).should be_a(PrimeGenerator)
  #   end
  #
  #   it "succeeds when not initialized" do
  #     PrimeGenerator.new.should be_a(PrimeGenerator)
  #   end
  # end
  #
  # describe "#max" do
  #   it 'has accessors' do
  #     generator = PrimeGenerator.new(10)
  #     generator.max.should == 10
  #     generator.max = 20
  #     generator.max.should == 20
  #   end
  # end

  describe "#primes_up_to" do
    it "should return the primes up to the value passed in" do
      PrimeGenerator.new.primes_up_to(10).should == [2, 3, 5, 7]
    end
  end

end