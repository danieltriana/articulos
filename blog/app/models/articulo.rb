class Articulo < ActiveRecord::Base
  validates :titular , presence: true,
  length: { minimum: 5}
end
