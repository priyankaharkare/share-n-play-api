class ToySerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :name, :description, :is_available
end
