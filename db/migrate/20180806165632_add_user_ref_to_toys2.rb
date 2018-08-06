class AddUserRefToToys2 < ActiveRecord::Migration[5.1]
  def change
    add_reference :toys, :user, foreign_key: true
  end
end
