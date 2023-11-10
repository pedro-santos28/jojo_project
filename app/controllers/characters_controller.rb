class CharactersController < ApplicationController
  def index

  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def character_params
      params.require(:character).permit(:name, :japanese_name, :image, :nationality, :catchphrase, :family, :chapter, :living, :is_human)
    end
end
