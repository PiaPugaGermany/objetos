# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
attr_accessor
  def initialize (a)
    @nombre = a[:nombre]
    @raza = a[:raza]
    @color = a[:color]
  end
  def ladrar
    print "#{@nombre} está ladrando!"
  end
end

dog = Dog.new(propiedades)
dog.ladrar


# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"
