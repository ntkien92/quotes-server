class V1::RabbitsController < ApplicationController
  def index
    @rabbits = Rabbit.all.order("id desc").page(params[:page])
    render json: @rabbits, root: 'items'
  end
end
