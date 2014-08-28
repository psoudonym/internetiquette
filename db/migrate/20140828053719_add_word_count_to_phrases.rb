class AddWordCountToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :word_count, :integer, :default => 1, :null => false
    add_index :phrases, :word_count
  end
end
