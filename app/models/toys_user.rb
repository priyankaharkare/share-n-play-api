class ToysUser < ApplicationRecord
  belongs_to :user
  belongs_to :toy
end
