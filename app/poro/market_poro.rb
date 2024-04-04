class MarketPoro
  attr_reader :name, :city, :state
  def initialize(attributes)
    # require 'pry'; binding.pry
    @name = attributes[:attributes][:name]
    @city = attributes[:attributes][:city]
    @state = attributes[:attributes][:state]
  end
end