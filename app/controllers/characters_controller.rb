class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      flash[:notice] = "New character added!"
      redirect_to characters_path
    else

    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def character_params
      params.require(:character).permit(:name, :japanese_name, :image, :nationality, :catchphrase, :family, :chapter, :living, :is_human, :skill_ids => [])
    end
end
