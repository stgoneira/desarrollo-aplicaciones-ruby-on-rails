# 
class SitioController < ApplicationController

  # si no sigo las convenciones debo utilizar render para indicar la vista a mostrar
  def index 
    render 'inicio'
  end 

  def install 
    Usuario.new(email: "juan@123.cl", password: "123456").save
    render plain: "Instalación realizada"
  end

end 