
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


