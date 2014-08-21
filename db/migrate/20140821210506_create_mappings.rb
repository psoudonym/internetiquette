class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.references :bad_phrase
      t.references :good_phrase
      t.boolean :approved
      t.integer :approver_id
      t.timestamps
    end
  end
end
