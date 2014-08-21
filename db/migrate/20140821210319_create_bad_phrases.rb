class CreateBadPhrases < ActiveRecord::Migration
  def change
    create_table :bad_phrases do |t|
      t.string :value
      t.boolean :approved
      t.integer :approver_id

      t.timestamps
    end
  end
end
