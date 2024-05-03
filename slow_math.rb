class SlowMath
  def self.add(a, b)
    result = a
    b.times do
      result += 1
    end
    result
  end

  def self.subtract(a, b)
    result = a
    b.times do
      result -= 1
    end
    result
  end

  def self.multiply(a, b)
    result = 0
    b.times do
      result = add(a, result)
    end
    result
  end

  def self.divide(a, b)
    result = 0
    while a > 0
      a -= b
      result = add(result, 1)
    end
    result
  end

  def self.modulus(a, b)
    while a >= b
      a = subtract(a, b)
    end
    a
  end

  def self.exponent(a, b)
    result = 1
    b.times do
      result = multiply(result, a)
    end
    result
  end
end

puts "5 + 10 = #{SlowMath.add(5, 10)}"
puts "5 - 10 = #{SlowMath.subtract(5, 10)}"
puts "5 * 10 = #{SlowMath.multiply(5, 10)}"
puts "5 / 10 = #{SlowMath.divide(5, 10)}"
puts "5 mod 10 = #{SlowMath.modulus(5, 10)}"
puts "5 ^ 10 = #{SlowMath.exponent(2, 10)}"

puts "1000 * 100 = #{SlowMath.multiply(1000, 100)}"
