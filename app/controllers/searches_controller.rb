class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'SWS5QECKMFVXFCFUVG3MDXIWFHMM4NR1MAQE1TZE3QYJRVIU'
      req.params['client_secret'] = 'JLLQI0H1KAIJJ342ZUAVZLGFKHAALXIXZRW41PWB3WS1CV5M'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
