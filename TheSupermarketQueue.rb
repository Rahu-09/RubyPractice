# Question:-customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
# n: a positive integer, the number of checkout tills.
# Answer:-
def queue_time(customers, n)
  arr=Array.new(n,0)
  customers.each do |i|
    idx=arr.find_index(arr.min)
    arr[idx]+=i
  end
  return arr.max
end

p queue_time([2,2,3,3,4,4], 2)
