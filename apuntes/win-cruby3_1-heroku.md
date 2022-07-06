# CRUBY + RAILS 6 + HEROKU

- ruby 3.1.2p20

## Modificaciones

1. Como aún no se soporta la plataforma **x64-mingw-ucrt** la dependencia de **tzinfo-data** hay que removerle la restricción por plataforma.

```
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'tzinfo-data'
```

2. Para que funcione en ambiente de producción hay que agregar unas gemas adicionales

```
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false
```

3. Probar con el sgte comando que todo ande bien:

```bash
rails server -e production
```