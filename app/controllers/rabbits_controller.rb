class RabbitsController < ApplicationController
  def index
    @rabbits = Rabbit.all
  end
end
