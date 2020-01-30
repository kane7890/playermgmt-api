class PlayersController < ApplicationController

  def show
    player = Player.find_by(id: params[:id])
    render json: player.to_json
  end

  def index
    players=Player.all
    render json: Player.all, only: [:id, :firstname, :lastname]
  end

  def create

    player = Player.new(params[:id])

    player.save
    render json: player.to_json
  end

  private

  def account_params
    params.require(:player).permit(:fname, :lname, :position)
  end
end
