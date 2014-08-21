class PoliteSuggestion < BadPhrase
  default_scope(-> { includes(:mappings).where('mappings.id is null').references(:mappings)})
end