class MarketsFacade
  attr_reader :service 
  def initialize(service = MarketsService.new)
    @service = MarketsService.new
    @markets = nil 
  end

  def all_markets
    @markets ||= begin 
      market_json = @service.get_markets
      @markets = market_json[:data].map { |market_data| MarketPoro.new(market_data)}
    end
    # require 'pry'; binding.pry
  end
end