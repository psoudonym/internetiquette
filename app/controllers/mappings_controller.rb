class MappingsController < ApplicationController
  #before_filter :initialize_mapping :only => [:new, :create]

  def new
    @mapping = Mapping.new
  end


  def create

    begin
      bad_phrase  = Phrase.negative.where(:value => params[:mapping][:bad_phrase]).first_or_create!
      good_phrase = Phrase.positive.where(:value => params[:mapping][:good_phrase]).first_or_create!
      mapping     = Mapping.create! :bad_phrase_id => bad_phrase.id, :good_phrase_id => good_phrase.id 
      flash[:sucess] = "Your contribution has been noted, and we thank you for your assitance in the endevaor"
      redirect_to root_path
    rescue Exception => error
      @mapping = Mapping.new
      flash[:error] = "Do pardon us, but #{error}"
      render :action => :new
    end
  end


private

  def initialize_mapping
    @mapping = Mapping.new
  end
end
