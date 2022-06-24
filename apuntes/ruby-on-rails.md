# Ruby on Rails

## Versiones Utilizadas

- JRuby 9.3.4 
- Ruby on Rails 6.1.6

## Ejemplo

1) Iniciar el proyecto 
```bash
jruby -S rails new catalogo --database=mysql 
```

2) Configurar credencias Base de Datos en archivo *config/database.yml*

3) Crear bases de datos
```bash
cd nombre-mi-proyecto 
jruby -S rails db:create 
```

4) Configurar los nombres de nuestras entidades para que Rails entienda como generar el código (plural y singular): 

*archivo: config/initializers/inflections.rb*

```ruby
ActiveSupport::Inflector.inflections(:en) do |inflect|  
    #inflect.irregular 'singular', 'plural'
    inflect.irregular 'categoria', 'categorias'
    inflect.irregular 'producto', 'productos'
end
```

5) Comando scaffold para generar Modelo, Vistas, Rutas, Controladores, Migraciones, Pruebas Unitarias, Helpers (métodos de ayuda ej. generación de enlaces), CSS, etc

```bash
jruby -S rails generate scaffold Categoria nombre 

jruby -S rails generate scaffold Producto nombre descripcion precio:integer categoria:references 
```

**Más info:**: https://guides.rubyonrails.org/v3.2/migrations.html#supported-types 

6) Afinar los archivos de migración a nuestro gusto. Ejemplo configurar **NOT NULL** para el **nombre** de las **categorías** en el archivo **db/migrate/20220624154000_create_categorias.rb**

```ruby
class CreateCategorias < ActiveRecord::Migration[6.1]
  def change
    create_table :categorias do |t|
      t.string :nombre, null: false

      t.timestamps
    end
  end
end
```

7) Ejecutar migración (para que se realicen los cambios en la BD) 

```bash
jruby -S rails db:migrate 
```

8) Opcionalmente, iterar para corregir algo deseado (ej. se me olvidó configurar un NOT NULL): 

```bash
jruby -S rails db:drop 
jruby -S rails db:create 
jruby -S rails db:migrate  
```

9) Probar el código que generó el scaffold 



 