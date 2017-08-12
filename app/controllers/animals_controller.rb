class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end
  
  def new
    @animal = Animal.new
  end
  
  def create
    @animal = Animal.create(animal_params)
    if @animal.invalid?
      flash[:error] = 'Could not save this entry!'
    end
    redirect_to root_path
  end
  
  private

  def animal_params
    params.require(:animal).permit(:name, :sound)
  end

end
