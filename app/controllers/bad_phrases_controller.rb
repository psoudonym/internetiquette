class BadPhrasesController < ApplicationController

  def new
    @bad_phrase = Phrase.new
  end


  def create
    begin
      bad_phrase  = Phrase.where(:value => params[:bad_phrase][:value], :positive_sentiment => false).first_or_create!
      flash[:sucess] = "Your contribution has been noted, and we thank you for your assitance in the endevaor"
      redirect_to new_bad_phrase_path
    rescue Exception => error
      @bad_phrase = Phrase.new
      flash[:error] = "Do pardon us, but #{error}"
      render :action => :new
    end
  end
end
