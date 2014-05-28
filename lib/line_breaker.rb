class LineBreaker
  def self.line_break(input_text, max_length)
    result = ""
    while input_text.length > 0
      index = max_length
      if input_text.length <= max_length
        result << input_text[0...index]
        result << "\n"
        input_text = input_text[index..-1].to_s.lstrip
      else
        until input_text[index] =~ /\s/
          index -= 1
        end
        result << input_text[0...index]
        result << "\n"
        input_text = input_text[index..-1].to_s.lstrip
      end
    end
    result.chomp
  end
end