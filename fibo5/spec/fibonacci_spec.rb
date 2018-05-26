require 'rspec'
require_relative '../model/fibonacci'

class Fibonacci_spec


  describe 'Chopper' do

    let(:fibo) { Fibonacci.new }

    it 'genero una susecion de 3 numeros' do
      expect(fibo.generar(3)).to eq [0,1,1]
    end

=begin

  it 'chop de 3 y [3] deberia ser 0' do
    expect(chopper.chop(3,[3])).to eq 0
  end
=end
end
end