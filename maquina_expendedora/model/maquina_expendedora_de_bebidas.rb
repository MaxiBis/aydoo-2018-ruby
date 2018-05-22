
require_relative '../model/hacedor_de_cafe_con_leche'
require_relative '../model/azucarero'

class MaquinaExpendedoraDeBebidas

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
    cafeteroConLeche = HacedorDeCafeConLeche.new
    cafeteroConLeche.hacer(un_vaso)

    miAzucarero = Azucarero.new
    miAzucarero.ponerAzucar(un_vaso,cantidad_azucar)

  end

  def hacer_te_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)



  end
end