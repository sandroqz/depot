class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true, length: {minimum: 10}
  validates :price, numericality: {
      greater_than_or_equal_to: 0.01,
      message: 'must be greater than or equal to one cent'
  }
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
