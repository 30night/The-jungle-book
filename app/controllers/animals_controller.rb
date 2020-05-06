class AnimalsController < ApplicationController
  before_action :authenticate_user!, only [:new, :create, :update, :destroy]
  before_action :find_animal, only [:show, :update, :destroy]

  def index
    @animal = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def create

  end

  def update
  end

  def destroy
  end

  private 

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animals_params
    require(@animal).permit(:name, :habitat, :description, :species_id)
  end
end
