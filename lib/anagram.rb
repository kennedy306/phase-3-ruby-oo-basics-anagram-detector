class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(word)
      sorted_word(word) == sorted_word(@word) && word.downcase != @word.downcase
    end
  
    def sorted_word(word)
      word.downcase.chars.sort.join
    end
  end
  
