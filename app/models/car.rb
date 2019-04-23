class Car < ApplicationRecord
  def name
    [year, brand, model].join(' ')
  end

  def coordinates
    [longitude, latitude]
  end

  def to_feature
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": coordinates
      },
      "properties": {
        "car_id": id,
        "name": name
      }
    }
  end
end
