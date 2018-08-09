# frozen_string_literal: true

class ToySerializer < ActiveModel::Serializer
  has_one :user
  attributes :id, :name, :description, :is_available
end
