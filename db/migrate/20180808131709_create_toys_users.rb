class CreateToysUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :toys_users do |t|
      t.references :user, foreign_key: true
      t.references :toy, foreign_key: true

      t.timestamps
    end
  end
end
