def convert_number(object)
  Integer(object)
rescue StandardError
  nil
end

class Lexicon
  DIRECTIONS = ['north', 'south', 'east', 'west']
  VERBS = ['go', 'kill', 'eat']
  STOPS = ['the', 'in', 'of']
  NOUNS = ['bear', 'princess']

  def self.scan(sentance)
    words = []

    sentance.split.each do |word|
      if DIRECTIONS.include? word
        words.push(['direction', word])
      elsif VERBS.include? word
        words.push(['verb', word])
      elsif STOPS.include? word
        words.push(['stop', word])
      elsif NOUNS.include? word
        words.push(['noun', word])
      elsif !convert_number(word).nil?
        words.push(['number', convert_number(word)])
      else
        words.push(['error', word])
      end
    end

    words
  end
end
