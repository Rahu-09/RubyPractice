#Questions:- Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

# Answer:-
def sum_two_smallest_numbers(numbers)
  sum=numbers[0].to_i+numbers[1].to_i
  (0...numbers.length-1).each do |i|
    (i+1...numbers.length).each do |j|
      if (numbers[i].to_i+numbers[j].to_i)<sum
        sum=numbers[i].to_i+numbers[j].to_i
      end
    end
  end
  return sum
end
p sum_two_smallest_numbers([25, 42, 71, 12, 18, 22])
