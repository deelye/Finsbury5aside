class GamesController < ApplicationController
  before_action :all_games, only: [:new, :create]

  def new
    @game = Game.new
  end

  def create
    # why aren't validation messages working?
    if game_params[:date] == ""
      redirect_to new_game_path
    else
      @game = Game.new(date: Date.parse(game_params[:date]))
      if @game.save
        redirect_to new_game_path
      else
        render :new
      end
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to new_game_path
  end

  private

  def game_params
    params.require(:game).permit(:date)
  end

  def all_games
    @games = Game.all.sort_by(&:date)
  end
end
