# Hashes 

## Sintaxis 

La clave puede ser cualquier tipo de objeto:
```ruby
{"uno"=>1, "dos"=>2}
```

También pueden ser símbolos:
```ruby
{:uno => 1, :dos => 2} # forma 1
{uno: 1, dos: 2}       # forma 2
```

# Hashes en métodos 

```ruby
def my(params)     # retorna el símbolo    :my
  puts params
end

# llamada al método
my(uno:"1", dos:"2")           # imprime lo sgte:     {:uno=>"1", :dos=>"2"}
my({uno:"1", dos:"2"})         # imprime lo sgte:     {:uno=>"1", :dos=>"2"}
my uno:"1", dos:"2"            # imprime lo sgte:     {:uno=>"1", :dos=>"2"}
my({:uno => "1", :dos => "2"}) # imprime lo sgte:     {:uno=>"1", :dos=>"2"}
```

```ruby
def otro(nombre, params) # retorna el símbolo     :otro
  puts nombre
  puts params
end

otro :my, uno: 1, dos:2, tres:3
#imprime
#my
#{:uno=>1, :dos=>2, :tres=>3}                                               

otro(:my, {uno: 1, dos:2, tres:3})
#imprime
#my
#{:uno=>1, :dos=>2, :tres=>3}                                               

otro :my, {:uno=>1, :dos=>2} 
#my
#{:uno=>1, :dos=>2}
```
