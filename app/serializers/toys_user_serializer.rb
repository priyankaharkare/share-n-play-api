class ToysUserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :toy
end
