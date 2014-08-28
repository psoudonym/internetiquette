class WordCountForExistingPhrases < ActiveRecord::Migration
  def up
    Phrase.all.each do |phrase|
      Phrase.where(:id => phrase.id).update_all(:word_count => phrase.value.count(" ") + 1)
    end
  end

  def down
  end
end
