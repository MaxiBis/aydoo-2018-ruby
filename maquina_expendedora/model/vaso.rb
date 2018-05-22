class Vaso
  attr_accessor :cafe, :te, :leche, :cantidadDeAzucar

  def initialize
    @cantidadDeAzucar = 0
    @cafe = false
    @te = false
    @leche = false
  end

  def cantidad_de_azucar
    return @cantidadDeAzucar
  end

  def tiene_cafe?
    @cafe
  end

  def tiene_azucar?
    if @cantidadDeAzucar > 0
      return true
    end
    false
  end

  def tiene_te?
    @te
  end

end