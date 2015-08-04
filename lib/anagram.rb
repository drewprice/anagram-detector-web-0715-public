require 'pry'
# Your code goes here!
class Anagram
  def initialize(string)
    @string = string
    @sorted_string = sort_chars(@string)
  end

  def match(words)
    words.keep_if do |word|
      @sorted_string == sort_chars(word)
    end
  end

  private

  def sort_chars(word)
    word.chars.sort
  end
end
