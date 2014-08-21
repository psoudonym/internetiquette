class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.references :bad_phrase
      t.references :good_phrase

      t.timestamps
    end
  end
end
