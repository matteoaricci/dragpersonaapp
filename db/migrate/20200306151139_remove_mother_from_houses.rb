class RemoveMotherFromHouses < ActiveRecord::Migration[6.0]
  def change
    remove_column :houses, :mother
  end
end
