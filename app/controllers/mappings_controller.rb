class MappingsController < ApplicationController
  before_filter :authenticate_admin!, :only => :purge

  def index
    @mappings = Mapping.all
  end

  def new
    @mapping = Mapping.new
  end

  def create
    begin
      bad_phrase  = Phrase.where(:value => params[:mapping][:bad_phrase], :positive_sentiment => false).first_or_create!
      good_phrase = Phrase.where(:value => params[:mapping][:good_phrase], :positive_sentiment => true).first_or_create!
      mapping     = Mapping.create! :bad_phrase_id => bad_phrase.id, :good_phrase_id => good_phrase.id 
      flash[:success] = "Your contribution has been noted, and we thank you for your assitance in the endevaor"
      redirect_to root_path
    rescue Exception => error
      @mapping = Mapping.new
      flash[:error] = "Do pardon us, but #{error}"
      render :action => :new
    end
  end

  def purge
    Mapping.where(:id => params[:ids]).destroy_all
    flash[:success] = 'Those pesky things shan\'t be disturbing you any more'
    redirect_to mappings_path
  end

end
