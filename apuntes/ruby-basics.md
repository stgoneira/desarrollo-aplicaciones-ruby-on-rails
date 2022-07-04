# Ruby Basics

## Naming Convention

### Variables 

```ruby
miVariable   # variable local 
$miVariable  # variable global
@miVariable  # variable de instancia 
@@miVariable # variable de clase
```

### Clases

```ruby
# comienza con Mayúscula
# si tiene más de 2 palabras usar CamelCase
class TarjetaCredito 

end 
```

## Methods


## Classes

```ruby
# SINTAXIS 
class NombreClase 
	# constructor 
	def initialize(arg1, arg2)
		# variables instancia 
		# sintaxis con @
		@arg1 = arg1 
		@arg2 = arg2 		
	end 

	# definicion de métodos
	def nombreMetodo(arg1)
		# código ruby 
	end 
end 
``` 

### attr_reader, attr_writer, attr_accessor

```ruby
class Humano 
  def initialize(nombre,edad)
    @nombre = nombre
    @edad = edad
  end

  # nombre only getter
  def nombre
    @nombre
  end 

  # edad getter & setter
  def edad
    @edad
  end

  def edad=(edad)
    @edad = edad
  end
end

a = Humano.new("Juan", 22)

a.edad # retorna: 22
a.edad = 30
a.edad # retorna: 30

a.nombre # retorna: "Juan"
a.nombre = "Ramón" # error: undefined method `nombre=' ....

```

- **attr_accessor**: genera un getter y un setter
- **attr_reader**: genera solo un getter
- **attr_writer**: genera solo un setter

```ruby
class Humano
  attr_accessor :nombre, :edad

  def initialize(nombre,edad)
    @nombre = nombre
    @edad = edad
  end
end
```

## Otros

```ruby
arr=["uno", "dos", "tres"]

# convierte cada elemento a MAYUSCULAS
arr.map { |e| e.upcase } # => ["UNO", "DOS", "TRES"]
arr.map(&:upcase) # lo mismo, pero abreviado
```

