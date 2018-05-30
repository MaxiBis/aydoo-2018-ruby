require 'rspec'
require_relative '../model/lista_sumatoria'

class ListaSumatoria_spec

  describe 'ListaSumatoriaTests' do

    original = [0,1,1,2,3,5,8,13,21,34]

    it 'aplico lista' do
      l = "l"
      ls = ListaSumatoria.new("l")

      expect(ls.aplicarSobre(original)).to eq original
    end

    it 'aplico sumatoria' do
      ls = ListaSumatoria.new("s")
      esperado = 88

      expect(ls.aplicarSobre(original)).to eq esperado
    end

    it 'creo sumatoria con un parametro inadecuado' do
      expect{ListaSumatoria.new("x")}.to raise_error ArgumentError, 'comportamiento debe ser lista o sumatoria'
    end
  end
end