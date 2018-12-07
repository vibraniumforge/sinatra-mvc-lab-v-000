require "pry"
class PigLatinizer

  def piglatinize(word)
    new_word=word.split("")
    alpha=("a".."z").to_a
    alpha_uppercase=("A".."Z").to_a
    vowels=%w[a e i o u A E I O U]
    consonants= alpha_uppercase + alpha - vowels
    result=''
    if vowels.include?(new_word[0])
      result="#{word}way"
    elsif consonants.include?(new_word[0]) && consonants.include?(new_word[1])  && consonants.include?(new_word[2])
      result="#{word[3..-1]}#{word[0..2]}ay"
    elsif consonants.include?(new_word[0]) && consonants.include?(new_word[1])
      result="#{word[2..-1]}#{word[0..1]}ay"
    elsif consonants.include?(new_word[0])
      result="#{word[1..-1]}#{word[0]}ay"
    else
      word
    end
    result
  end

  def sentence_pig_latinizer(sentence)
    words_of_a_sent=sentence.split(" ")
    # binding.pry
    pig_lat_words=words_of_a_sent.collect do |word|
      piglatinize(word)
    end
    # binding.pry
    # pig_lat_sentence=pig_lat_words.join(" ")
    #
    # pig_lat_sentence
    return pig_lat_words.join(" ")
    binding.pry
  end

end
