class V1::InspirationsController < ApplicationController
  def index
    items = Inspiration.all.order("id desc").page(params[:page])
    page = items.total_pages
    render json: {
      page: page,
      items: items
      }
  end
end
