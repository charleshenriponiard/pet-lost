class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def create
    @pet = Pet.new(params_pet)
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(params_pet)
      redirect_to pets_path
    else
      render :edit
    end
  end

  private

  def params_pet
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
