require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |language, description|
      if new_hash[language] == nil
        new_hash[language] = description
        new_hash[language][:style] = [style]
      #  binding.pry
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
