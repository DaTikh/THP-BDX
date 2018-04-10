class Book
  attr_accessor :title

  def title=(new)
    c = []
    conjunctions = ["and", "but", "for", "nor", "or", "so", "yet"]
    prepositions = ["over", "in", "of"]
    articles = ["the", "a", "an"]
    # new = new.to_s
    new.split(" ").each do |b|
      if conjunctions.include? b
        c << b
      elsif prepositions.include? b
        c << b
      elsif articles.include? b
        c << b
      elsif b.length == 1 && b == "i"
        c << b.upcase!
      elsif b.is_a? Integer
        # print b
        c << b
      else
        c << b.capitalize!
      end
      @title = c.join(" ")
    end
  end

end


puts @book = Book.new
puts @book.title = "I Knew When I was 20"
