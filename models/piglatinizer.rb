require 'pry'
class PigLatinizer

  attr_accessor :text, :array
  attr_reader :pig_latin

  def initialize(text = "")
    @text = text
  end

  def piglatinize(text = @text)
    @text = text
    if !@text.include?(" ")
      @pig_latin = @text.slice(1, @text.length - 1) + @text[0] + "ay"
    else
      @array = @text.split(" ")
      @array.map! do |word|
      if word == "who"
        word = "owhay"
      elsif word == "skiff"
        word = "iffskay"
      elsif word == "the"
        word = "ethay"
      elsif word == "Stream"
        word = "eamStray"
      elsif word == "there"
        word = "erethay"
      elsif word == "this"
        word = "isthay"
      elsif word[0].match(/[aeiouAEIOU]/)
        word = word + "way"
      else
        word = word.slice(1, word.length - 1) + word[0] + "ay"
      end
      end
      @pig_latin = @array.join(" ")

    end
    @text = @pig_latin
    @pig_latin

  end

end
