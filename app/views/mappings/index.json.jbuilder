json.set! :mappings do
  @mappings.desc_bad_word_count.each do |mapping|
    json.set! mapping.bad_phrase.value, mapping.good_phrase.value
  end
end