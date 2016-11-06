require_relative 'reverse_letters'
def find_anagram(word)

result = Array.new
count=word.length
i=0

while i < count do
	fixed_letter=word[i]
	temp_word=word.delete fixed_letter
	result.push(fixed_letter << temp_word)
	fixed_letter=word[i]
	result.push(fixed_letter << reverse_letters(temp_word).to_s)
	i +=1
end

return result

end

find_anagram('abc')