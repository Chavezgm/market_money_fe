class MarketPoro
  attr_reader :name, :city, :state, :id
  def initialize(attributes)
    # require 'pry'; binding.pry
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @city = attributes[:attributes][:city]
    @state = attributes[:attributes][:state]
  end
end