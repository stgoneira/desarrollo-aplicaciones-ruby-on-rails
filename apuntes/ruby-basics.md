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


## Otros

```ruby
arr=["uno", "dos", "tres"]

# convierte cada elemento a MAYUSCULAS
arr.map { |e| e.upcase } # => ["UNO", "DOS", "TRES"]
arr.map(&:upcase) # lo mismo, pero abreviado
```

