require 'pry'

def wordifier(num)

  joiner = []


  num_words = {"singles" => ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'],
    "tens" => ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'],
  }

  bank = num.to_s.split("").reverse()

  if (num >= 10000) & (num < 99999)
    joiner.push(num_words.fetch("singles")[(bank[4]+bank[3]).to_i]+" thousand ")
    num = (bank[0]+bank[1]+bank[2]).to_i
  end

  # (bank[4]+bank[3]).to_i

  if (num >= 1000) & (num < 9999)
    joiner.push(num_words.fetch("singles")[bank[3].to_i]+" thousand ")
    num = (bank[0]+bank[1]+bank[2]).to_i
  end


  if (num >= 100) & (num < 999)
    joiner.push(num_words.fetch("singles")[bank[2].to_i]+" hundred ")
    num = (bank[0]+bank[1]).to_i
  end

  if (num >= 20) & (num < 100)
    joiner.push(num_words.fetch("tens")[bank[1].to_i-2])
    num = bank[0].to_i
  end

  if (num<20)
    joiner.push(num_words.fetch("singles")[num])
    return joiner.join().sub(/\s$/ , '')
  else
    return 'too big'
  end



end
