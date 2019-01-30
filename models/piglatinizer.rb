class PigLatinizer
  
  def piglatinize(string)
    @string = string.split(" ")
    
    @string.map do |word|
      if word.upcase.start_with?('A','E','I','O','U')
        word << 'way'
      else 
        cons = word.split(/[aeiou]/).first
        word.sub!(cons, '')
        word << cons + 'ay'
      end
    end
    @string.join(" ")
  end
end