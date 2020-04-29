class GamesController < ApplicationController
  def new
    @games = Game.all
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to new_game_path
  end
end
