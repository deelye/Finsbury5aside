class GamesController < ApplicationController
  def new
    @games = Game.all
    @game = Game.new
  end

  def create
    @games = Game.all

    date = Date.parse(game_params[:date])
    @game = Game.new(date: date)
    if @game.save
      redirect_to new_game_path
    else
      render :new
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

end
