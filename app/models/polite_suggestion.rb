class PoliteSuggestion < Phrase
  default_scope(-> { where('phrases.positive_sentiment = false').includes(:bad_mappings).where('mappings.id is null').references(:mappings) } )
end
