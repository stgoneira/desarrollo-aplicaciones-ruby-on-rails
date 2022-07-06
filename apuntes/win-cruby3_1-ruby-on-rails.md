# Ejemplo de CRuby 3.1 + Rails 6.1 + SQLite + PostgreSQL + Heroku

```bash
rails new nombre-proyecto --database=postgresql
# fallarán algunas cosas, pero no importa
cd nombre-proyecto
```

**Gemfile**:
```
# requerido para sobrellevar algunos errores de las versiones
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

group :development do
  gem 'sqlite3', '~> 1.4'
  # ...
end

# Le quito la restricción por plataforma, ya que Bundle aún no conoce la nueva de la versión 3.1 - x64_mingw_ucrt
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'tzinfo-data'
```

```bash
bundle install
```

```yaml
default: &default    
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  adapter: sqlite3
  timeout: 5000
development:
  <<: *default
  database: db/development.sqlite3
test:
  <<: *default
  database: db/test.sqlite3
production:
  # <<: *default
  adapter: postgresql
  encoding: unicode
  # Heroku reemplazará estos datos, así que no importa lo que pongamos
  database: cualquier_cosa
  username: cualquier_cosa
  password: cualquier_cosa
```

```bash
rails webpacker:install
```

```bash
rails db:create
```

```bash
rails g controller Sites index
```

```ruby
Rails.application.routes.draw do
  root 'sites#index'  
end
```

Chequea que todo ande bien con el ambiente de producción:
```bash
rails server -e production
```

Ahora puedes seguir trabajando con el ambiente de desarrollo:
```bash
rails server
```

