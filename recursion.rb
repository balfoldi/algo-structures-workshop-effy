class Recursion
  def self.word_split(sentence, words)
    word_split_rec(sentence, words, result = [])
  end


  def self.word_split_rec(sentence, words, result = [])
    return result if words.empty?

    words.each do |word|
      if sentence.start_with?(word)
        result << word

        word_split_rec(sentence.delete_prefix(word), words - [word], result)
      end
    end

    result
  end
end


p Recursion.word_split('themanran', %w[the ran man])
p Recursion.word_split('themanran', %w[clown ran man])
p Recursion.word_split('ilovedogsJohn', %w[i am a dogs lover love John])
