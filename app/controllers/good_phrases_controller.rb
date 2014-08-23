class GoodPhrasesController < ApplicationController
  before_filter :authenticate_admin!, :only => :purge

  def index
    @good_phrases = Phrase.positive.all
  end
  
  def purge
    Phrase.where(:id => params[:ids]).destroy_all
    flash[:success] = 'Those pesky things shan\'t be disturbing you any more'
    redirect_to good_phrases_path
  end
end
