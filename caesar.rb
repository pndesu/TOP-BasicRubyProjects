gitdef caesarEncode(string, number)
    string = string.bytes
    string = string.map do |char|
        if (char.between?(65, 90) || char.between?(97, 122))
            if (char.between?(65, 90))
                if (char - number < 65)
                    char = 90 - ((64 - char + number) % 26)
                else
                    char -= number
                end
            elsif (char.between?(97, 122))
                if (char - number < 97)
                    char = 122 - ((96 - char + number) % 26)
                else
                    char -= number
                end
            end
        end
        char
    end
    puts string.pack('c*')
end

caesarEncode('abcd', -27)
