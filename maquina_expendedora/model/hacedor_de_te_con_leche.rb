require_relative '../model/vaso'
require_relative '../model/tetero'

class HacedorDeTeConLeche

  def initialize
  end

  def hacer(un_vaso)
    teterp = Tetero.new
    teterp.hacer(un_vaso)

    lechero = Lechero.new
    lechero.poner(un_vaso)
  end
end