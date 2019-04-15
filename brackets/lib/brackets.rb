class Brackets
  def balanced(str)
    stack  = []
    lookup = { '(' => ')', '[' => ']', '{' => '}', '<' => '>' }
    left   = lookup.keys
    right  = lookup.values

    str.each_char do |char|
      if left.include? char
        stack << char
      elsif right.include? char
        return false if stack.empty? || (lookup[stack.pop] != char)
      end
    end

    return stack.empty?
  end
end
