class V1::RabbitsController < ApplicationController
  def index
    items = Rabbit.all.order("id desc").page(params[:page])
    render json: items, root: 'items', meta: items.total_pages
  end
end
