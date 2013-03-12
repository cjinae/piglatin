class PiglatinConverter
	def self.convert(name)
		return name if name.nil? or name.empty?
	    if
			name = name.downcase	
		   	n = name.index(/[aeiou]/)
		   	consonants = name[0,n]
		   	trim = name[n..-1]
		   	piggy = trim + consonants
			return name = piggy + "ay"
		end
  	end
end

puts PiglatinConverter.convert("pig")