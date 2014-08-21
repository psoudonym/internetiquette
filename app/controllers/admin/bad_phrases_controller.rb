class Admin::BadPhrasesController < AdminsController

  def index
    @bad_phrases = Phrase.negative.all
  end
  
end
