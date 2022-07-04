# 
class SitioController < ApplicationController

  # si no sigo las convenciones debo utilizar render para indicar la vista a mostrar
  def index 
    render 'inicio'
  end 

end 