class PoliteSuggestionsController < ApplicationController

  def index
    @polite_suggestions = PoliteSuggestion.all
  end

  def batch_create
    
  end
end
