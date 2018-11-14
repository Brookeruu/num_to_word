require 'rspec'
require 'num_to_word'

describe('num_to_word') do

  it("respond with 'one' when user enters '1'") do
    expect(wordifier(1)).to(eq('one'))
  end

  it("respond with 'eleven' when user enters '11'") do
    expect(wordifier(11)).to(eq('eleven'))
  end

  it("respond with 'nineteen' when user enters '19'") do
    expect(wordifier(19)).to(eq('nineteen'))
  end

  it("respond with 'twenty' when user enters '20'") do
    expect(wordifier(20)).to(eq('twenty'))
  end

  it("respond with 'twenty' when user enters '20'") do
    expect(wordifier(21)).to(eq('twentyone'))
  end

  it("respond with 'twenty' when user enters '20'") do
    expect(wordifier(32)).to(eq('thirtytwo'))
  end

  it("respond with 'twenty' when user enters '20'") do
    expect(wordifier(99)).to(eq('ninetynine'))
  end


  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(100)).to(eq('one hundred'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(200)).to(eq('two hundred'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(258)).to(eq('two hundred fiftyeight'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(1000)).to(eq('one thousand'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(2563)).to(eq('two thousand five hundred sixtythree'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(10000)).to(eq('two thousand five hundred sixtythree'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(11894)).to(eq('two thousand five hundred sixtythree'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(19000)).to(eq('two thousand five hundred sixtythree'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(20000)).to(eq('two thousand five hundred sixtythree'))
  end

  it("respond with 'too big' when user enters number greater than '99'") do
    expect(wordifier(25000)).to(eq('two thousand five hundred sixtythree'))
  end




end
