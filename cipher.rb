# cipher.rb

def caesar_cipher(str, key)
  key = key % 26 if key > 26

  num_arr = []

  # convert str to array of corresponding ascii codes & loop over it
  str.unpack("C*").each do |n|

    # if it's not in the alphabet, keep it as is
    num_arr << n unless n.between?(65, 90) || n.between?(97, 122)

    encoded = n + key

    num_arr << encoded if encoded.between?(65, 90) || encoded.between?(97, 122)

    # after adding key, if it's past 'z', circle back to 'a'
    if (n.between?(65, 90) && encoded > 90) || (n.between?(97, 122) && encoded > 122)
      num_arr << encoded - 26
    end

  end

  # convert it back from array of ascii codes to a string
  str = num_arr.pack("C*")
end

p caesar_cipher("What a string!", 5)
p caesar_cipher("What a string!", 31)
