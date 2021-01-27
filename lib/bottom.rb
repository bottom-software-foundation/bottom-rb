require "bottom/version"
module Bottom

    class DecodeError < StandardError
        attr_reader :object
        def initialize(message, object)
        super(message)
        @object = object
        end
    end

    ##
    # @param {String} bottomt: text to decode to human speak
    def Bottom.decode(bottom)
        seperator = "👉👈"
        out = ""
        bottom_chars = "🫂💖✨🥺,❤️"
        bottom.strip!
        rev_character_map = Hash[
            "🫂" => 200,
            "💖" => 50,
            "✨" => 10,
            "🥺" => 5,
            "," => 1,
            "❤️" => 0
        ]
        dup = bottom.gsub(seperator,'')
        dup.each_char { |c|
            if not bottom_chars.include? c 
                raise DecodeError.new("Inavlid Character Found: " + c, c)
            end

        }
        bottom.split(seperator).each { |subc|
            counter = 0
            subc.each_char{ |emoji|
                counter = counter + "#{rev_character_map[emoji]}".to_i
            }
            out = out + counter.chr
        }
        return out
    end

    ##
    # @param {String} text: text to encode to bottom
    def Bottom.encode(text)
        empty = ""
        seperator = "👉👈"
        character_map = Hash[
            200 => "🫂",
            50 => "💖",
            10 => "✨",
            5 => "🥺",
            1 =>  ",",
            0 => "❤️"
        ]
        text.each_char{ |letter|
            char = letter.ord
            while char != 0 do
                character_map.each_key{ |key|
                    value =  "#{character_map[key]}"
                    if char >= key
                        char = char - key
                        empty = empty + value
                        break
                    end
                }
            end
            empty = empty + seperator
        }
        return empty
    end
end