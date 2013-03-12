require "test/unit"
require "./piglatinconverter.rb"

class PiglatinTest < Test::Unit::TestCase
  
  def test_start_with_consonant
  	assert_equal "igpay", PiglatinConverter.convert("pig")
  	assert_equal "eedomfray", PiglatinConverter.convert("freedom") 	
  end

  def test_word_with_caps
  	assert_equal "ingstray", PiglatinConverter.convert("String")
  	assert_equal "ingstray", PiglatinConverter.convert("StrinG")
  end

  def test_nil_value
  	assert_equal nil, PiglatinConverter.convert(nil)
  end

  def test_empty_value
  	assert_equal "", PiglatinConverter.convert("")
  end


end

#INSTRUCTIONS
# consonant clutter: 
	# find vowel, in string, return all letters to the left
	# move group of consonants to the end of the string
	# consonant test if ![a,e,i,o,u]
# if vowel, add "ay" to end of word
# if empty string, return empty string
# if nil return nil

# STEPS
#1 find me the first occurance of a vowel,
		# find the index of that first vowel
			#  	"freedom".index(/[aeiou]/) = n 
		# retun to me the letters between 0 and index of first vowel
			#   "freedom"[0,n] = consonants
		# trim the string to remove consonants (will retruns from n to end of string)
			# 	"freedom"[n..-1] = trim
		# add consonants to end of string
			# trim + consonants = piggy

#2 add "ay" to the end of the word
	# piggy + "ay"

#3 if string is empty return empty <empty string>
#4 if nil return ""
