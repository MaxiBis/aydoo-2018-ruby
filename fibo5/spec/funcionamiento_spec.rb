require 'sinatra'
require 'sinatra/json'
require 'rspec'
require 'rack/test'
require_relative '../model/00_funcionamiento'

class Funcionamiento_spec

  describe 'Aplicacion Sinatra' do
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    describe '/fibonacci/nro/lista' do
      it 'deberia devolver json con que incluya el nro' do
        get '/fibonacci/5/lista'

        expect(last_response).to be_ok
        cuerpo_parseado = JSON.parse(last_response.body)

        expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      end

      it 'deberia devolver json con que incluya la lista' do
        get '/fibonacci/5/lista'

        expect(last_response).to be_ok
        cuerpo_parseado = JSON.parse(last_response.body)

        expect(cuerpo_parseado['fibonacci']['lista']).to eq [0, 1, 1, 2, 3]
      end
    end

  describe '/fibonacci/nro/sumatoria'do
    it 'deberia devolver json con que incluya el nro' do
      get '/fibonacci/5/sumatoria'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)

      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
    end

    it 'deberia devolver json con que incluya la suma' do
      get '/fibonacci/5/sumatoria'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)

      expect(cuerpo_parseado['fibonacci']['sumatoria']).to eq 7
    end
  end
=begin
  describe '/fibonacci/nro+parametros' do
    it 'deberia devolver json con lista invertida' do
      get '/fibonacci/5?sentido=inverso'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)

      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [3, 2, 1, 1, 0]
    end

    it 'deberia devolver json con los pares' do
      get '/fibonacci/8?solo=pares'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)

      expect(cuerpo_parseado['fibonacci']['limite']).to eq 8
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [2, 8]
    end
  end
=end
  end
end