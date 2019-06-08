# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catálogo que no incluya el último precio correspondiente a cada producto debido a que ya no comercializa productos de talla XS.
# Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt y luego imprima el nuevo catálogo solicitado en un archivo llamado nuevo_catalogo.txt

class Centro
  def list (b)
    File.open("nuevo_catalogo.txt","a") {|v| v.puts("#{b.name}, #{b.large},  #{b.medium}, #{b.small}")}
  end
end

class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end
end

products_list = []
file = File.open("catalogo.txt", "r")
data = file.readlines
file.close

data.each do |prod|
ls = prod.split(', ')
products_list << Product.new(*ls)
end

centro = Centro.new
products_list.each{|c| centro.list(c)}
