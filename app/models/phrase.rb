class Phrase < ActiveRecord::Base
  has_many :bad_mappings, :foreign_key => 'bad_phrase_id', :class_name => 'Mapping'
  has_many :good_mappings, :foreign_key => 'good_phrase_id', :class_name => 'Mapping'

  validates_presence_of :value
  validates_uniqueness_of :value#, :scope => [:positive_sentiment]

  scope(:positive, -> { where "phrases.positive_sentiment = true" })
  scope(:negative, -> { where "phrases.positive_sentiment = false" })
  scope(:alphabetical, -> { order 'phrases.value ASC' })
end
