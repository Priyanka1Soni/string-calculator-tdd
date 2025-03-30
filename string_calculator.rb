class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    num_array = numbers.split(/,|\n/).map(&:to_i)
    num_array.sum
  end
end

# Example Usage
puts StringCalculator.add("")       # Output: 0
puts StringCalculator.add("1")      # Output: 1
puts StringCalculator.add("1,5")    # Output: 6
puts StringCalculator.add("1,2,3")  # Output: 6
puts StringCalculator.add("2\n3,4") # Output: 9
puts StringCalculator.add("3\n2\n1") # Output: 6
