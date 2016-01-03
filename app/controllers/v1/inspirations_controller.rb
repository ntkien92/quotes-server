class V1::InspirationsController < ApplicationController
  def index
    inspirations = Inspiration.all.order("id desc").page(params[:page])
    render json: inspirations, root: 'items'
  end
end
