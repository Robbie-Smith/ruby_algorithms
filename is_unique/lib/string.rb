class String
  LETTERS = ('a'..'z').to_a + (('A'..'Z').to_a).freeze
  def hash_of_character_codes
    LETTERS.each_with_object({}) do |letter, memo|
      memo[letter] = letter.bytes.pop
    end
  end

  def is_unique?
    content = {}
    self.chars.each_index do |index|
      if chars[index] == chars[index + 1]
        return false
      elsif content[letter] == true
        return false
      end
      content[letter] = true
    end
    true
  end
end
