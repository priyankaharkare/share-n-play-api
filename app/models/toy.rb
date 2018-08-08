class Toy < ApplicationRecord
  has_many :toys_users
  has_many :users, through: :toys_users
end
