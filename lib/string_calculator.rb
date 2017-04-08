class StringCalculator
  def self.add(input)
    return 0 unless input
    numbers = input.split(',').map(&:to_i)
    numbers.inject(0) { |sum, number| sum + number }
  end
end
