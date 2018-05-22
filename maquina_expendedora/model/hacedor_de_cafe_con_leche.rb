
require_relative '../model/cafetero'
require_relative '../model/lechero'

class HacedorDeCafeConLeche

  def initialize
  end

  def hacer(un_vaso)
    cafetero = Cafetero.new
    cafetero.hacer(un_vaso)

    lechero = Lechero.new
    lechero.poner(un_vaso)
  end
end