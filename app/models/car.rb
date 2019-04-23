class Car < ApplicationRecord
  def name
    [year, brand, model].join(' ')
  end
end
