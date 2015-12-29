class V1::RabbitsController < ApplicationController
  def index
    @rabbits = Rabbit.all.page(params[:page])
    render json: @rabbits
  end
end
