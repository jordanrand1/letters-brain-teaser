def check_words
  puts "Enter words (q to quit)"
  s = gets.to_s.downcase.strip
  if s == 'q'
    exit
  end
  @highest = 0
  @highest_word = ""
  new = s.split(" ").map do |w| 
    num = w.chars.count { |char| w.count(char) > 1 }
    if num > @highest
      @highest = num
      @highest_word = w
    else
      next
    end
  end
  output
end

def output
  if @highest_word == ""
    puts "No word with enough repeated letters"
    check_words
  else
    puts @highest_word
    puts @highest
    check_words
  end
end

check_words