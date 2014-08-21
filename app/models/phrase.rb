class Phrase < ActiveRecord::Base
  validates_presence_of :value
  validates_uniqueness_of :value#, :scope => [:positive_sentiment]

  scope(:positive, -> { where "positive_sentiment = true" })
  scope(:negative, -> { where "positive_sentiment = false" })
end
