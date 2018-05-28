class ParidadImpar < Paridad

  def aplicarSobre(listaFibo)

    listaADevolver = Array.new

    listaFibo.each do |nro|
      if (nro%2 == 1) && (nro>0)
        listaADevolver+= [nro]
      end
    end
    listaADevolver
  end
end