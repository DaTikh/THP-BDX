#write your code here
def echo(a)
  return a
end

def shout(a)
  return(a).upcase!
end

def repeat(a, b = 0)
  if b == 0
    return "#{a} #{a}"
  else
    c = []
    b.times do
      c << a
    end
    return c.join(" ")
  end
end

def start_of_word(a, b)
  return a[0..(b - 1)]
end

def first_word(a)
  return a.split(" ")[0]
end

def titleize(a)
  skip = ["and", "or", "the", "over"]
  c = []
  a.split(" ").each do |b|
    if skip.include? b
      c << b
    else
    c << b.capitalize!
    end
  end
    c[0] = a.split(" ")[0].capitalize!
  return c.join(" ")
end
