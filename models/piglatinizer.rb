require "pry"
class PigLatinizer

  def piglatinize(word)
    if word.include?(" ")
      sentence_pig_latinizer(word)
    else
      alpha=("a".."z").to_a
      alpha_uppercase=("A".."Z").to_a
      vowels=%w[a e i o u A E I O U]
      consonants= alpha_uppercase + alpha - vowels
      result=''
      if vowels.include?(word[0])
        result="#{word}way"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        result="#{word[3..-1]}#{word[0..2]}ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        result="#{word[2..-1]}#{word[0..1]}ay"
      elsif consonants.include?(word[0])
        result="#{word[1..-1]}#{word[0]}ay"
      end
    end
    # binding.pry
    result
  end

  def sentence_pig_latinizer(sentence)
    words_of_a_sentence = sentence.split(" ")
    pig_latinized_words = words_of_a_sentence.collect do |word|
      piglatinize(word)
    end
    # binding.pry
    final=pig_latinized_words.join(" ")
    # binding.pry
    final
  end

end

# PigLatinizer.new.sentence_pig_latinizer("I love programming")
