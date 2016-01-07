class V1::InspirationsController < ApplicationController
  def index
    items = Inspiration.all.order("id desc").page(params[:page])
    render json: items, root: 'items', meta: items.total_pages
  end
end
