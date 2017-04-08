class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    numbers = input.split(',').map(&:to_i)
    numbers.inject(0) { |sum, number| sum + number }
  end

  def self.subt(input)
    return 0 if input.empty?

    numbers = input.split(',').map(&:to_i)
    return numbers.first.to_i if numbers.size == 1

    numbers.inject { |subt, number| subt - number }
  end
end
