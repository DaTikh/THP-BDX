def translate(a)

  vow = ["a", "e", "i", "o", "u", "y"]
  ay = "ay"
  phrase = []

  a.split(" ").each do |w|
    # -- cas "squ" --
    if  w.index("squ")
      w = w.split(//).rotate(3)
      word = w.join("") + ay
    # -- cas "qu" --
    elsif w.index("qu")
      w = w.split(//).rotate(2)
      word = w.join("") + ay
    # -- voyelle --
    elsif vow.include? w[0]
      word = w + ay
    # -- consonne rotate jusqu'à voyelle --
    else
      w = w.split(//)
      w.rotate! until vow.include? w[0]
      word = w.join("") + ay
    end

      phrase << word
   end

  return phrase.join(" ")
end
