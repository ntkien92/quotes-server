class V1::QuotesController < ApplicationController
  def index
    items = Quote.get_items(params[:index])
    render json: items, root: 'items'
  end
end
