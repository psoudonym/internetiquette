class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :value
      t.boolean :approved, :null => true, :default => false
      t.integer :approver_id
      t.boolean :positive_sentiment, :default => false, :null => false

      t.timestamps
    end
  end
end
