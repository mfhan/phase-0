# Cipher Challenge

# I worked on this challenge [with: Chris Savage]
# I spent [2] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# create an array of all the letters and depending on where the letters are on the array and add 4.
#
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. ==> It removes capitals and splits the input into an array

  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? =>  arrays might be easier to manipulate
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here? ==>It goes through each character in the array
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? => We're just setting a value
    cipher.each_key do |y| # What is #each_key doing here? => Iterates through the hash keys
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? ==> we're assigning x to each character, and in cipher.each-key we assign the y value to the key
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?#
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a " do? ==> it turns a range of integers into an array
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for? #It provides for an absence of document to decode.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning? == an array organized in sentences.
end

# Your Refactored Solution


def dr_evils_cipher(num, coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. => it remove capitals and splits into an array
  decoded_sentence = []
  alphabet = ("a".."z").to_a.join("")
  shift = num
  cipher = alphabet.chars.rotate(shift).join("")
  symbols = ["@", "#", "$", "%", "^", "*", "&"]
 input.each do |x|
   if symbols.include?(x)
     decoded_sentence << x.tr("@#*$%^&", " ")
  elsif
    alphabet.include?(x)
     decoded_sentence << x.tr(alphabet, cipher) #shifts the letter in the alphabet to the corresponding letter in the cipher by index value
  else
    decoded_sentence << x
  end
 end
  p decoded_sentence.join("")
end

# Reflection
# We sought ways to avoid force-feeding the cipher, instead opting to use the rotate method to shift the order of letters. We made use of the tr method to transform strings. We simplified the logic of the cipher, we changed variable names, and removed the hash in doing so.
#  What concepts did you review or learn in this challenge?
# -- We reviewed the art of manipulating hashes and transforming arrays. We reviewed some useuful methods such as downcase, split, rotate, tr, join.

#  What is still confusing to you about Ruby?
# -- While refactored solutions are elegant, they often make it hard to understand WHAT is going on. As our codes become more and more sophisticated, I am confused by that perspective.
#  What are you going to study to get more prepared for Phase 1?
# -- Classes, accessing hashes and arrays.


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")


