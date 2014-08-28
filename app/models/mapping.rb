class Mapping < ActiveRecord::Base
  belongs_to :good_phrase, :foreign_key => 'good_phrase_id', :class_name => 'Phrase'
  belongs_to :bad_phrase, :foreign_key => 'bad_phrase_id', :class_name => 'Phrase'

  validates_uniqueness_of :good_phrase_id, :scope => :bad_phrase_id
  #scope(:alphabetical, -> { order 'dp_categories.name ASC' })

  scope(:desc_bad_word_count, -> { includes(:bad_phrase).order("word_count DESC").references(:bad_phrase) })
end

