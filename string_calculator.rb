class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    num_array = numbers.split(/,|\n/).map(&:to_i)

    negatives = num_array.select { |num| num < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end


    num_array.sum
  end
end

# Example Usage
begin
  puts StringCalculator.add("")       # Output: 0
  puts StringCalculator.add("1")      # Output: 1
  puts StringCalculator.add("1,5")    # Output: 6
  puts StringCalculator.add("1,2,3")  # Output: 6
  puts StringCalculator.add("2\n3,4") # Output: 9
  puts StringCalculator.add("3\n2\n1") # Output: 6
  puts StringCalculator.add("-1,2") # Throws: "negative numbers not allowed: -1"
rescue => e
  puts "Exception: #{e.message}"
end