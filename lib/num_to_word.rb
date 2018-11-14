require 'pry'

def wordifier(num)
  joiner = []

  num_words = {"ones_teens" => ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'],
    "tens" => ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'],
    "more" => ['','thousand','million','billion','trillion']
  }

  reverse_num_array = num.to_s.split("")
  num_of_blocks = reverse_num_array.each_slice(3).to_a

  num_of_blocks.each do |i|

    num = i.join().to_i
    reverse_num_array=i.reverse()

    # binding.pry

    block = nil
    if (num >= 100) & (num < 1000)
      joiner.push(num_words.fetch("ones_teens")[reverse_num_array[2].to_i]+" hundred ")
      num = (reverse_num_array[1]+reverse_num_array[0]).to_i
    end

    if (num >= 20) & (num < 100)
      joiner.push(num_words.fetch("tens")[reverse_num_array[1].to_i-2])
      # joiner.push("-")
      num = reverse_num_array[0].to_i
    end

    if (num<20)
      joiner.push(num_words.fetch("ones_teens")[num])
      # joiner.join().sub(/\W*$/ , '')

    end


  end

return joiner.join("")






  # if (num >= 100) & (num < 1000)
  #   joiner.push(num_words.fetch("ones_teens")[reverse_num_array[2].to_i]+" hundred ")
  #   num = (reverse_num_array[1]+reverse_num_array[0]).to_i
  # end
  #
  # if (num >= 20) & (num < 100)
  #   joiner.push(num_words.fetch("tens")[reverse_num_array[1].to_i-2])
  #   joiner.push("-")
  #   num = reverse_num_array[0].to_i
  # end
  #
  # if (num<20)
  #   joiner.push(num_words.fetch("ones_teens")[num])
  #   return joiner.join().sub(/\W*$/ , '')
  # else
  #   return 'too big'
  # end




end


print wordifier(123456789)
