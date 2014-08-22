class GoodPhrasesController < ApplicationController

  def index
    @good_phrases = Phrase.positive.all
  end
  
end
