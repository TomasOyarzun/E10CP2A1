module Formula
	def perimetro(lado1, lado2)
		(lado1 + lado2) * 2
	end

	def area(lado1, lado2)
		lado1 * lado2
	end
end

class Rectangulo
  #Mixing
	include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
  	"#{@base} #{@altura}"
  end
end

class Cuadrado
  #Mixing
	include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
  	"#{@lado}"
  end
end

#Test
puts square = Cuadrado.new(4).perimetro(4,4)
puts rectangle = Rectangulo.new(10, 5).area(10, 5)



