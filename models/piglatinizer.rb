class PigLatinizer
  
  def piglatinize(string)
    @string = string.split(" ")
    
    @string.map do |word|
      if word.upcase.start_with?('A','E','I','O','U')
        word << 'way'
      else 
    
  
end