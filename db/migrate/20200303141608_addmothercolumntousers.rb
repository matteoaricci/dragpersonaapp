class Addmothercolumntousers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mother, :boolean, null: false, default: false
  end
end
