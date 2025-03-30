class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    num_array = numbers.split(",").map(&:to_i)
    num_array.sum
  end
end

# Example Usage
puts StringCalculator.add("")       # Output: 0
puts StringCalculator.add("1")      # Output: 1
puts StringCalculator.add("1,5")    # Output: 6
