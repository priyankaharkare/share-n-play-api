# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :toys_users
  has_many :toys, through: :toys_users
end
