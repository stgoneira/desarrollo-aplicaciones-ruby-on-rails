class SitesController < ApplicationController
    def index 
    end 

    def search
        render plain: params[:q]
    end 
end
