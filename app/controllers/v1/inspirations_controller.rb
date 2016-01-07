class V1::InspirationsController < ApplicationController
  def index
    items = Inspiration.all.order("id desc").page(params[:page])
    total_page = items.total_pages
    render json: items, root: 'items', meta: { total: items.total_pages }
  end
end
