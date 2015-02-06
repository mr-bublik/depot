json.array!(@produkts) do |produkt|
  json.extract! produkt, :id, :title, :description, :image_url, :price
  json.url produkt_url(produkt, format: :json)
end
