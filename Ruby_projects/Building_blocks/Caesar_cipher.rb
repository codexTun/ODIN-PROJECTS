
def cipher(string, key)
    arr_string = string.downcase.split("")
    alpha = ("a".."z").to_a
    arr_string.each_with_index do |letter, index|
        if alpha.include?(letter)
            alpha_index = alpha.index(letter)
            string_index = arr_string[index]
            if alpha_index + key > 25
                key_change = alpha[alpha_index + key - 25 - 1]
                arr_string[index] = key_change
                else
                key_change = alpha[alpha_index + key]
                arr_string[index] = key_change
            end
        end
    end
    arr_string.join.capitalize
end

cipher("What a string!", 1)




==begin
def caesar_cipher(string, key)
	arr_string = string.downcase.split("")
	alpha = ("a".."z").to_a
	for i in arr_string do 
		if alpha.include?(i)
			alpha_index = alpha.index(i)
			string_index = arr_string.index(i)
				if alpha_index + key > 25
					key_change = alpha[alpha_index + key - 25 - 1]
					arr_string[string_index] = key_change
				else
					key_change = alpha[alpha_index + key]
					arr_string[string_index] = key_change
				end
		
		end
		
	end

	arr_string.join.capitalize
end 
puts caesar_cipher("What a string!", 5)
  
==end