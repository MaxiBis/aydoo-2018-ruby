require 'rspec'
require_relative '../model/sentido'
require_relative '../model/sentido_directo'
require_relative '../model/sentido_inverso'

class Sentido_spec

  describe 'sentidoTests' do

    salidaOriginal = [0,1,1,2,3]

    it 'aplico un sentido directo y devuelve lo mismo' do
      sentido = SentidoDirecto.new

      expect(sentido.aplicarSobre(salidaOriginal)).to eq salidaOriginal
    end

    it 'aplico un sentido inverso y devuelve la lista al revez' do
      sentido = SentidoInverso.new
      salidaEsperada = [3,2,1,1,0]

      expect(sentido.aplicarSobre(salidaOriginal)).to eq salidaEsperada
    end

  end
end