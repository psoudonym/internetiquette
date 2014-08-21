class Phrase < ActiveRecord::Base
  validates_presence_of :value
  validates_uniqueness_of :value#, :scope => [:positive_sentiment]

  scope(:positive, -> { where "phrases.positive_sentiment = true" })
  scope(:negative, -> { where "phrases.positive_sentiment = false" })
  scope(:alphabetical, -> { order 'phrases.value ASC' })
end
