class WordSplit
  def self.word_split(sentence, words)
    return [] if words.empty?
    #first_word = words.shift
    if sentence.include?(words.first)
      #sentence = sentence.delete_prefix(first_word)
      return [words.shift] + word_split(sentence, words).to_a
    else
      words.shift
      return word_split(sentence, words).to_a
    end
    #word_split(sentence, words)
  end
end