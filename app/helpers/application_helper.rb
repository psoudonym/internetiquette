module ApplicationHelper

  def punish_bad_word(string)
    content_tag(:span, :class => 'bad_word_wrapper') do
      content_tag(:span, :class => 'bad_word_heart') do
        string.split(//).join("\u2063")
      end
    end
  end

end