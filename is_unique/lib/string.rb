class String
  def is_unique?
    content = {}
    self.chars.each_index do |index|
      letter = chars[index]
      if letter == chars[index + 1]
        return false
      elsif content[letter] == true
        return false
      end
      content[letter] = true
    end
    true
  end
end
