class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :race_id
      t.integer :sexual_orientation_id
      t.integer :gender_id

      t.timestamps
    end
  end
end
