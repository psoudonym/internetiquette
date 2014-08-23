class BadPhrasesController < ApplicationController
  before_filter :authenticate_admin!, :only => :purge

  def index
    @bad_phrases = Phrase.negative.all
  end

  def new
    @bad_phrase = Phrase.new
  end

  def create
    begin
      bad_phrase  = Phrase.where(:value => params[:bad_phrase][:value], :positive_sentiment => false).first_or_create!
      flash[:success] = "Your contribution has been noted, and we thank you for your assitance in the endevaor"
      redirect_to new_bad_phrase_path
    rescue Exception => error
      @bad_phrase = Phrase.new
      flash[:error] = "Do pardon us, but #{error}"
      render :action => :new
    end
  end

  def purge
    Phrase.where(:id => params[:ids]).destroy_all
    flash[:success] = 'Those pesky things shan\'t be disturbing you any more'
    redirect_to bad_phrases_path
  end
end
