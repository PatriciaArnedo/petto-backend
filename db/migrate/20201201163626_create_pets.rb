class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :hunger
      t.integer :cleanliness
      t.integer :energy
      t.integer :happiness
      t.string :happy_img
      t.string :sad_img
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
