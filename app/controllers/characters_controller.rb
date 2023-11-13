class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
  end

  def create
    @character = Character.new(character_params)
    @character.save
    @characters = Character.all

    respond_to do |format|
      format.turbo_stream do
        flash.now[:notice] = "Character has been successfully created!"
      end
      format.html { redirect_to characters_path, notice: "Character was successfully created." }
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
