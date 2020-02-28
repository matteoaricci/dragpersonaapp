class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :description
      t.string :mother

      t.timestamps
    end
  end
end
