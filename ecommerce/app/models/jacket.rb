class Jacket < ActiveRecord::Base
  has many :carts
  has_many :users, through: :carts
end
