1) Iniciar el proyecto 
jruby -S rails new catalogo --database=mysql 

2) Configurar credencias Base de Datos en archivo config/database.yml 

3) Crear bases de datos
cd nombre-mi-proyecto 
jruby -S rails db:create 

4) Configurar los nombres de nuestras entidades para que Rails entienda como generar el código (plural y singular): 

archivo: config/initializers/inflections.rb 

ActiveSupport::Inflector.inflections(:en) do |inflect|  
    #inflect.irregular 'singular', 'plural'
    inflect.irregular 'categoria', 'categorias'
    inflect.irregular 'producto', 'productos'
end

5) Comando scaffold para generar Modelo, Vistas, Rutas, Controladores, Migraciones, Pruebas Unitarias, Helpers (métodos de ayuda ej. generación de enlaces), CSS, etc

jruby -S rails generate scaffold Categoria nombre 

jruby -S rails generate scaffold Producto nombre descripcion precio:integer categoria:references 

6) Afinar los archivos de migración a nuestro gusto (NOT NULL) 

7) Ejecutar migración (para que se realicen los cambios en la BD) 

jruby -S rails db:migrate 

8) Opcionalmente, iterar para corregir algo deseado (ej. se me olvidó configurar un NOT NULL): 

jruby -S rails db:drop 
jruby -S rails db:create 
jruby -S rails db:migrate  

9) Probar el código que generó el scaffold 



 