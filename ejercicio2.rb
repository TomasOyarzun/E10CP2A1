module Formula
	def perimetro(lado1, lado2)
		(lado1 + lado2) * 2
	end

	def area(base, altura)
		base * altura
	end
end

class Rectangulo
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
	include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
  	"#{@lado}"
  end
end

square = Cuadrado.new(4)
rectangle = Rectangulo.new(10, 5)


