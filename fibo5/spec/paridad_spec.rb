require 'rspec'
require_relative '../model/Paridad'
require_relative '../model/Paridad_Par'
require_relative '../model/Paridad_Impar'

class Paridad_spec

  describe 'ParidadTests' do

    original = [0,1,1,2,3,5,8,13,21,34]

    it 'aplico paridad par' do
      pares = ParidadPar.new
      esperado = [2,8,34]

      expect(pares.aplicarSobre(original)).to eq esperado
    end

    it 'aplico paridad impar' do
      impares = ParidadImpar.new
      esperado = [1,1,3,5,13,21]

      expect(impares.aplicarSobre(original)).to eq esperado
    end
  end

end