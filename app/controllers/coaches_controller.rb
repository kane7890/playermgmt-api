

class CoachesController < ApplicationController

  def index
    coaches=Coach.all
    render json: Coach.all, only: [:id, :firstname, :lastname], include: [:players]
  end

  def show
    coach = Coach.find_by(id: params[:id])
    render json: coach.to_json
  end

  def create
    
    coach = Coach.new(params[:id])

    coach.save
    render json: coach.to_json
  end

end
