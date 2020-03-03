class Addmothercolumntousers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :integer, default: 1
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
  end
end
