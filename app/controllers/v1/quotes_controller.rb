class V1::QuotesController < ApplicationController
  def index
    if params[:index].blank?
      items = Quote.all
    else
      items = Quote.get_items(params[:index])
    end
    render json: items, root: 'items'
  end
end
