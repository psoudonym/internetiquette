class Phrase < ActiveRecord::Base
  has_many :bad_mappings, :foreign_key => 'bad_phrase_id', :class_name => 'Mapping', :dependent => :destroy
  has_many :good_mappings, :foreign_key => 'good_phrase_id', :class_name => 'Mapping', :dependent => :destroy

  validates_presence_of :value
  validates_uniqueness_of :value#, :scope => [:positive_sentiment]

  before_save :set_word_count

  scope(:positive, -> { where "phrases.positive_sentiment = true" })
  scope(:negative, -> { where "phrases.positive_sentiment = false" })
  scope(:alphabetical, -> { order 'phrases.value ASC' })
  scope(:desc_word_count, -> { order "word_count DESC" })

  private

  def set_word_count
    self.word_count = self.value.count(" ") + 1
  end
end
