class V1::QuoteVersionsController < ApplicationController
  def index
    item = QuoteVersion.last
    render json: item, root: 'item'
  end
end
