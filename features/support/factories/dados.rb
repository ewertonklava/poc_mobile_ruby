class Dados
  def self.medidas(lado1,lado2,lado3)
    lado = OpenStruct.new
    lado.um = lado1
    lado.dois = lado2
    lado.tres = lado3
    lado
  end
end
