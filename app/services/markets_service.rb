class MarketsService

  
  def conn 
    conn = Faraday.new("http://localhost:3000") do |faraday|
      faraday.headers['Accept'] = 'application/json'
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_markets
    # require 'pry'; binding.pry
    get_url("/api/v0/markets") 
  end
  
end
# def initialize;end 

# def call_db(path, params = {})
#   response = connection.get(path) do |req|
#     req.params = params
#     # req.params[:api_key] = ENV['movie_api_key']
#   end
#   parse_data(response)
# end

# private

# def connection
#   Faraday.new('http://localhost:3000/api/v0')
# end

# def parse_data(data)
#   JSON.parse(data.body, symbolize_names: true)
# end