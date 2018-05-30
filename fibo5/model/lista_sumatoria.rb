class ListaSumatoria

  def initialize(comportamiento)
    @comportamiento = comportamiento
    if comportamiento != "s" and comportamiento != "l"
      raise ArgumentError.new('comportamiento debe ser lista o sumatoria')
    end
  end

  def aplicarSobre(listaFibo)
    if @comportamiento == "l"
      return listaFibo
     end
    if @comportamiento == "s"
      devuelto = 0
      listaFibo.each do |nro|
        devuelto += nro
      end
      return devuelto
    end

  end
end