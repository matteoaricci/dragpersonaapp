class AddMotherIdToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :mother_id, :integer
  end
end
