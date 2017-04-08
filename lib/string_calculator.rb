class StringCalculator
  class << self
    def add(input)
      return 0 if input.empty?
      numbers = input.split(',').map(&:to_i)
      return numbers.first.to_i if numbers.size == 1

      numbers.pop if numbers.size > 2

      numbers.inject(0) { |sum, number| sum + number }
    end

    def subt(input)
      return 0 if input.empty?
      numbers = input.split(',').map(&:to_i)
      return numbers.first.to_i if numbers.size == 1

      numbers.pop if numbers.size > 2

      numbers.inject { |subt, number| subt - number }
    end

    def mult(input)
      return 0 if input.empty?
      numbers = input.split(',').map(&:to_i)
      return numbers.first.to_i if numbers.size == 1

      numbers.pop if numbers.size > 2

      numbers.inject { |subt, number| subt * number }
    end

    def divis(input)
      return 0 if input.empty?
      numbers = input.split(',').map(&:to_f)
      return numbers.first.to_i if numbers.size == 1

      numbers.pop if numbers.size > 2

      result = numbers.inject { |subt, number| subt / number }
      result == result.to_i ? result.to_i : result.floor(3)
    end
  end
end
