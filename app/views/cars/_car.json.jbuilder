json.extract! car, :id, :brand, :model, :year, :address, :img_url, :latitude, :longitude, :created_at, :updated_at
json.url car_url(car, format: :json)
