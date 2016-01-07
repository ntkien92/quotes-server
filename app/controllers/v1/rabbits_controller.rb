class V1::RabbitsController < ApplicationController
  def index
    items = Rabbit.all.order("id desc").page(params[:page])
    page = items.total_pages
    render json: {
      page: page,
      items: items
      }
  end
end
