class PoliteSuggestionsController < ApplicationController

  def index
    @polite_suggestions = PoliteSuggestion.all
  end


  def batch_create
    begin
      mappings = params[:mappings].collect do |mapping|
        next if mapping[:good_phrase].blank?
        good_phrase = Phrase.where(:value => mapping[:good_phrase], :positive_sentiment => true).first_or_create!
        mapping     = Mapping.create! :bad_phrase_id => mapping[:bad_phrase_id], :good_phrase_id => good_phrase.id 
      end

      if mappings.compact.present?
        flash[:success] = "Your contribution has been noted, and we thank you for your assitance in the endevaor"
      end
      redirect_to polite_suggestions_path
    rescue Exception => error
      @polite_suggestions = PoliteSuggestion.all
      flash[:error] = "Do pardon us, but #{error}"
      render :action => :index
    end
  end
end
