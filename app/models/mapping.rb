class Mapping < ActiveRecord::Base
  belongs_to :good_phrase, :foreign_key => 'good_phrase_id', :class_name => 'Phrase'
  belongs_to :bad_phrase, :foreign_key => 'bad_phrase_id', :class_name => 'Phrase'

  validates_uniqueness_of :good_phrase_id, :scope => :bad_phrase_id
  #scope(:alphabetical, -> { order 'dp_categories.name ASC' })
end

