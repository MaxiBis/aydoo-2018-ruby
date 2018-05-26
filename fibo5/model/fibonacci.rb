class Fibonacci


  def generar(cantidadNumeros)

    if cantidadNumeros < 1
      raise ArgumentError.new('Numero debe ser 1 o mayor')
    end
    devolucion = Array.new
    primero = 0
    segundo = 1
    devolucion[0] = primero
    devolucion[1] = segundo

    for i in 2..(cantidadNumeros-1) do
      devolucion[i] = primero + segundo
      primero = segundo
      segundo = devolucion[i]
    end

    return devolucion
  end
end