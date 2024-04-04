class MarketsController < ApplicationController
  def index
    facade = MarketsFacade.new() 
    @markets = facade.all_markets
    # require 'pry'; binding.pry
  end
end