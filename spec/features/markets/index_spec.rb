require "rails_helper"

RSpec.describe "Market" do
  before(:each) do
    @market =  { 
      id: '322458',
      name: "14&U Farmers' Market",
      street: "1400 U Street NW ",
      city: "Washington",
      county: "District of Columbia",
      state: "District of Columbia",
      zip: "20009",
      lat: "38.9169984",
      lon: "-77.0320505"
    }
  end

  describe 'Market Index' do
    it 'US 1' do
     visit markets_path
      # When I visit '/markets'
      within "#-market-#{@market[:id]}" do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")
        # I see all markets listed with their name, city and state

        click_button("More info")
        # When I click a button to see more info on that market

        expect(current_path).to eq(market_path(@market[:id]))
        # I'm taken to that market's show page '/markets/:id'
      
      end
    end
  end
end