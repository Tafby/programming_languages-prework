def reformat_languages(languages)
  new_hash = {}
  languages.each do |k, lang_hash|
    lang_hash.each do |lang, details|
      if !new_hash.has_key?(lang)
        new_hash[lang] = {
        :type => details[:type],
        :style => []
      }
      end
      new_hash[lang][:style] << k
    end
  end
  new_hash
end