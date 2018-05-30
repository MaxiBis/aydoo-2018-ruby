require_relative './Sentido'

class SentidoInverso < Sentido

  def aplicarSobre(listaFibo)

    listaADevolver = Array.new

    i = listaFibo.size
    listaFibo.each do |nro|
      i = i -1
      listaADevolver[i] = nro
    end
    listaADevolver
  end

end