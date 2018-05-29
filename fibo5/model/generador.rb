require_relative '../model/Paridad'
require_relative '../model/Paridad_Par'
require_relative '../model/Paridad_Impar'
require_relative '../model/sentido'
require_relative '../model/sentido_directo'
require_relative '../model/sentido_inverso'

class Generador

  def initialize(params)
    if params[:sentido] == nil
      @sentido = ""
    else
      @sentido = params[:sentido]
    end
    if params[:solo] == nil
      @paridad = ""
    else
      @paridad = params[:solo]
    end

  end

  def generadorParidad()
    if @paridad == "impares"
      return ParidadImpar.new
    end
    if @paridad == "pares"
      return ParidadPar.new
    end
    Paridad.new
  end

  def generadorSentido()
    if @sentido == "directo"
      return SentidoDirecto.new
    end
    if @sentido == "inverso"
      return SentidoInverso.new
    end
    Sentido.new
  end
end