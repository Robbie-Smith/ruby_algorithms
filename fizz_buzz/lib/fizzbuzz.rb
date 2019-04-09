class Fizzbuzz
  def buzz(value)
    s = ""
    if ( value % 5 == 0 && value % 3 == 0 )
        s << "fizz buzz"
    elsif value % 3 == 0
        s << "fizz"
    elsif value % 5 == 0
        s << "buzz"
    end
    s
  end
end
