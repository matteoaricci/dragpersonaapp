class CreateUserTalents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_talents do |t|
      t.integer :user_id
      t.integer :talent_id
      t.timestamps
    end
  end
end
