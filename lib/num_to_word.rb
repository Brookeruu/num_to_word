require 'pry'

def wordifier(num)

  joiner = []


  num_words = {"ones_teens" => ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'],
    "tens" => ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'],
  }

  reverse_num_array = num.to_s.split("").reverse()

  if (num >= 100000) & (num < 1000000)
    joiner.push(num_words.fetch("ones_teens")[reverse_num_array[5].to_i] + " hundred ")
    #joiner.push(num_words.fetch("ones_teens")[reverse_num_array[3].to_i] + " thousand ")
    num = (reverse_num_array[4]+reverse_num_array[3]+reverse_num_array[2]+reverse_num_array[1]+reverse_num_array[0]).to_i
  end

  if (num >= 20000) & (num < 100000)
    joiner.push(num_words.fetch("tens")[reverse_num_array[4].to_i-2])
    joiner.push(num_words.fetch("ones_teens")[reverse_num_array[3].to_i] + " thousand ")
    num = (reverse_num_array[2]+reverse_num_array[1]+reverse_num_array[0]).to_i
  end

  if (num >= 10000) & (num < 20000)
    joiner.push(num_words.fetch("ones_teens")[(reverse_num_array[4]+reverse_num_array[3]).to_i]+" thousand ")
    num = (reverse_num_array[2]+reverse_num_array[1]+reverse_num_array[0]).to_i
  end

  if (num >= 1000) & (num < 10000)
    joiner.push(num_words.fetch("ones_teens")[reverse_num_array[3].to_i]+" thousand ")
    num = (reverse_num_array[2]+reverse_num_array[1]+reverse_num_array[0]).to_i
  end

  if (num >= 100) & (num < 1000)
    joiner.push(num_words.fetch("ones_teens")[reverse_num_array[2].to_i]+" hundred ")
    num = (reverse_num_array[1]+reverse_num_array[0]).to_i
  end

  if (num >= 20) & (num < 100)
    joiner.push(num_words.fetch("tens")[reverse_num_array[1].to_i-2])
    joiner.push("-")
    num = reverse_num_array[0].to_i
  end

  if (num<20)
    joiner.push(num_words.fetch("ones_teens")[num])
    return joiner.join().sub(/\W*$/ , '')
  else
    return 'too big'
  end



end
