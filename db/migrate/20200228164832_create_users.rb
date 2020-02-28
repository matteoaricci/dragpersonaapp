class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :drag_name
      t.integer :city_id
      t.integer :house_id

      t.timestamps
    end
  end
end
