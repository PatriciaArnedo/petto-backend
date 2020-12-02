class AddBioToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :bio, :string
  end
end
