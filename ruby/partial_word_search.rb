puts 'Input here your array'
array = []
while true
  word = gets.chomp
  break if word == ''
  array << word
end
puts array.to_s

puts 'Input here your your search'
query_str = gets.chomp

def findWord(query, array_of_strings)
  result_array = []
  array_of_strings.each { |element|
    if element =~ Regexp.new(query, 'i')
      result_array << element
    end
  }
  if result_array.empty?
    result_array << 'Empty'
  end
  return result_array
end

puts findWord(query_str, array).to_s
