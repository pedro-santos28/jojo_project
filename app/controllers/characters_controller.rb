class CharactersController < ApplicationController

  before_action :set_character, only: [:show, :destroy]

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
    @character.destroy

    respond_to do |format|
      format.html { redirect_to character_url, notice: "Character was successfully destroyed." }
      format.json { head :no_content }
      format.turbo_stream {redirect_to characters_path}
    end
  end

  private

    def character_params
      params.require(:character).permit(:name, :japanese_name, :image, :nationality, :catchphrase, :family, :chapter, :living, :is_human, :skill_ids => [])
    end

    def set_character
      @character = Character.find_by(id: params[:id])
    end
end
