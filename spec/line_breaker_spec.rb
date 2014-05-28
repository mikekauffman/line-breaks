require 'rspec'
require 'line_breaker'

describe LineBreaker do

  it "takes a text input and returns that input with new lines every 80 characters max" do
    input_text = <<INPUT
This is a sample text to test that the method returns the desired result. This line is over 80 characters but will hopefully be split on two lines in the end.
INPUT
    expected_text = <<INPUT
This is a sample text to test that the method returns the desired result. This
line is over 80 characters but will hopefully be split on two lines in the end.
INPUT
    expect(LineBreaker.line_break(input_text, 80)).to eq(expected_text)
  end
end