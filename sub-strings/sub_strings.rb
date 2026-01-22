def substrings(string, array)
  string = string.downcase
  result = {}

  array.each do |subword|
    matches = string.scan(/(?=#{subword})/)
    value = matches.length
    if value > 0 then result[subword] = value end
  end

  puts result
  result
end

my_string = "Hello there, angel of my nightmares"
my_dictionary = [
  "the",
  "there",
  "her",
  "he",
  "re",
  "and",
  "an",
  "in",
  "ing",
  "on",
  "to",
  "for",
  "of",
  "is",
  "it",
  "that",
  "th",
  "at",
  "with",
  "wi",
  "was",
  "as",
  "be",
  "by",
  "you",
  "your",
  "our",
  "we",
  "say",
]

substrings(my_string, my_dictionary)