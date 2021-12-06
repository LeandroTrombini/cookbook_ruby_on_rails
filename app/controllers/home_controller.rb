class HomeController < ApplicationController
    def index         
        @recipes = Recipe.all
    end    

    def search
        @recipes = Recipe.where('name like ? OR recipe_type like ?',
          "%#{params[:q]}%", "%#{params[:q]}%")
        
    end
end