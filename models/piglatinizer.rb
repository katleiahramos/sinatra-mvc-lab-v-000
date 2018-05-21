class PigLatinizer
def piglatinize(string)
  str = string.downcase
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  if vowels.include?(str[0])
    string + 'way'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    string[2..-1] + string[0..1] + 'ay'
  elsif consonants.include?(str[0])
    binding.pry
    string[1..-1] + string[0] + 'ay'
  else
    string # return unchanged
  end
end

end
