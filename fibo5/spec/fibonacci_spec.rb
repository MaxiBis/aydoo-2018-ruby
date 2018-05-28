require 'rspec'
require_relative '../model/fibonacci'

class Fibonacci_spec


  describe 'FiboTests' do

    let(:fibo) { Fibonacci.new }

    it 'genero una susecion de 3 numeros' do
      expect(fibo.generar(3)).to eq [0,1,1]
    end

    it 'genero una susecion de numero negativo' do
      expect{fibo.generar(-1)}.to raise_error ArgumentError, 'Numero debe ser 1 o mayor'
    end

end
end