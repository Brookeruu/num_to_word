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

  it("respond with 'twenty' when user enters '21'") do
    expect(wordifier(21)).to(eq('twenty-one'))
  end

  it("respond with 'twenty' when user enters '32'") do
    expect(wordifier(32)).to(eq('thirty-two'))
  end

  it("respond with 'twenty' when user enters '99'") do
    expect(wordifier(90)).to(eq('ninety'))
  end

  it("respond with 'twenty' when user enters '99'") do
    expect(wordifier(99)).to(eq('ninety-nine'))
  end

  it("respond with 'too big' when user enters number greater than '100'") do
    expect(wordifier(100)).to(eq('one hundred'))
  end

  it("respond with 'too big' when user enters number greater than '200'") do
    expect(wordifier(200)).to(eq('two hundred'))
  end

  it("respond with 'too big' when user enters number greater than '258'") do
    expect(wordifier(258)).to(eq('two hundred fifty-eight'))
  end

  it("respond with 'too big' when user enters number greater than '990'") do
    expect(wordifier(990)).to(eq('nine hundred ninety'))
  end

  it("respond with 'too big' when user enters number greater than '999'") do
    expect(wordifier(999)).to(eq('nine hundred ninety-nine'))
  end

  it("respond with 'too big' when user enters number greater than '1999'") do
    expect(wordifier(1999)).to(eq('one thousand nine hundred ninety-nine'))
  end

  it("respond with 'too big' when user enters number greater than '1999'") do
    expect(wordifier(9999)).to(eq('nine thousand nine hundred ninety-nine'))
  end

  it("respond with 'too big' when user enters number greater than '1999'") do
    expect(wordifier(20000)).to(eq('twenty thousand'))
  end

  it("respond with 'too big' when user enters number greater than '1999'") do
    expect(wordifier(29999)).to(eq('twentynine thousand nine hundred ninety-nine'))
  end




end
