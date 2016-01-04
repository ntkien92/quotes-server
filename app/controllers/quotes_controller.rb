class QuotesController < ApplicationController
  def index
  end

  def random
    @quote = Quote.order('RANDOM()').limit(1)
    render json: @quote
  end
end
