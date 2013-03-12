class PiglatinConverter
	def self.convert(name)

		if name == ""
		   	"<empty string>"
		elsif name == nil
		   	"nil"
	    else
			name = name.downcase	
		   	n = name.index(/[aeiou]/)
		   	consonants = name[0,n]
		   	trim = name[n..-1]
		   	piggy = trim + consonants
			name = piggy + "ay"
		end
  	end
  	p PiglatinConverter
end

# puts PiglatinConverter.convert("pig")