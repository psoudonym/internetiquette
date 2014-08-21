class Admin::GoodPhrasesController < AdminsController

  def index
    @good_phrases = Phrase.positive.all
  end

end
