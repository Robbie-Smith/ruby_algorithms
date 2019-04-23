class Brackets
  def balanced(str)
    stack  = []
    lookup = { '(' => ')', '[' => ']', '{' => '}', '<' => '>' }
    open   = lookup.keys
    closed  = lookup.values

    str.each_char do |char|
      if open.include?(char)
        stack << char
      elsif closed.include?(char)
        if stack.empty? || (lookup[stack.pop] != char)
          return false
        end
      end
    end

    return stack.empty?
  end
end
