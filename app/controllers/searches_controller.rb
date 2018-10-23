class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['SWS5QECKMFVXFCFUVG3MDXIWFHMM4NR1MAQE1TZE3QYJRVIU'] = client_id
      req.params['JLLQI0H1KAIJJ342ZUAVZLGFKHAALXIXZRW41PWB3WS1CV5M'] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
