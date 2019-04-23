Car.destroy_all

CARS = [
  {
    brand: 'Ferrari',
    model: '250 GTO',
    year: 1962,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910057/clusters/Ferrari-250-GTO-3.jpg'
  },
  {
    brand: 'Ferrari',
    model: 'Testarossa',
    year: 1986,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910095/clusters/1520280883cfcd2BB3F13FE-AE95-479C-BEE9-7A9A69CCF32D-940x705.jpg'
  },
  {
    brand: 'Ferrari',
    model: '288 GTO',
    year: 1985,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910236/clusters/1985-ferrari-288-gto--image-via-mecum-auctions_100560325_l.jpg'
  },
  {
    brand: 'Lamborghini',
    model: 'Miura',
    year: 1972,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910327/clusters/1972-Lamborghini-Miura-P400-SV-1.png'
  },

  {
    brand: 'Lamborghini',
    model: 'Diablo',
    year: 1990,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910449/clusters/umf8ukf7krhxltbdwksg.jpg'
  },
  {
    brand: 'Lamborghini',
    model: 'Aventador',
    year: 2017,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910557/clusters/images.jpg'
  },
  {
    brand: 'Porsche',
    model: '911 Turbo',
    year: 1979,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910617/clusters/bcd6f1db9de40000a4b00c6405382584b64689e8.jpg'
  },
  {
    brand: 'Jaguar',
    model: 'E-Type Zero',
    year: 1968,
    img_url: 'https://res.cloudinary.com/opratododia/image/upload/v1555910960/clusters/jaguar_e-type_zero_parked.jpg'
  }
]
spain = [40.4168, -3.7038]
london = [51.5074, -0.1278]
paris = [48.8566, 2.3522]

puts "Creating cars..."

rand(20..50).times do
  latitude, longitude = RandomLocation.near_by(spain.first, spain.second, 20000)
  coordinates = { latitude: latitude, longitude: longitude }
  Car.create!(CARS.sample.merge(coordinates))
end

rand(20..50).times do
  latitude, longitude = RandomLocation.near_by(london.first, london.second, 20000)
  coordinates = { latitude: latitude, longitude: longitude }
  Car.create!(CARS.sample.merge(coordinates))
end

rand(20..70).times do
  latitude, longitude = RandomLocation.near_by(paris.first, paris.second, 20000)
  coordinates = { latitude: latitude, longitude: longitude }
  Car.create!(CARS.sample.merge(coordinates))
end
