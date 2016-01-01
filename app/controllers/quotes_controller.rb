class QuotesController < ApplicationController
  def index
  end

  def random
    @quote = Quote.all.sample
    render json: @quote
  end
end
