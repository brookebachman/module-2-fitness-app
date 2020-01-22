class DietsController < ApplicationController

    def new 
        @diet = Diet.new
    end

    def show
        @diet = Diet.find(params[:id])
    end

    def create
        @diet = Diet.new(diet_params)
        if @diet.save
            redirect to diets_path(@diet)
        else
            render :new
        end
    end
    
    def index
        @diets = Diet.all(diet_params)
    end

    def diet_params
        params.require(:diet).permit(:name, :description)
    end
end
