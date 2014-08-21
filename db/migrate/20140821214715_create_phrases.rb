class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :value
      t.boolean :approved
      t.integer :approver_id
      t.boolean :positive_sentiment, :default => false

      t.timestamps
    end
  end
end
