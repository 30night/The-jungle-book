class AnimalsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animal = Animal.all
  end

  def show

  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animals_params).save

    redirect_to @animal
  end

  def edit
  
  end

  def update
    @animal.update(animals_params)

    redirect_to @animal
  end

  def destroy
    @animal.delete
    redirect_to root_path
  end

  private 

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animals_params
    params.require(:animal).permit(:name, :habitat, :description, :species_id, :user_id)
  end
end
