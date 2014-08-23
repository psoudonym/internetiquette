json.set! :mappings do
  @mappings.each do |mapping|
    json.set! mapping.bad_phrase.value, mapping.good_phrase.value
  end
end