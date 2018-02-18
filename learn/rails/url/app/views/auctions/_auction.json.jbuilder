json.extract! auction, :id, :title, :bid, :price, :created_at, :updated_at
json.url auction_url(auction, format: :json)
