require_relative '../model/vaso'

class Azucarero

  def initialize
  end

  def ponerAzucar(un_vaso, cantidad_azucar)
    un_vaso.cantidadDeAzucar = cantidad_azucar
  end
end