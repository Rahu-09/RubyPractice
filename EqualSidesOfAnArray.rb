# Question:-You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# Answer:-
def find_even_index(arr)
  sumfirst=0
  sumlast=0
  flag=-1
  c=1
  arr.each do |i|
    (c...arr.length).each do |j|
      sumlast+=arr[j]
    end
    if sumfirst==sumlast
      flag=c-1
      break
    end
    sumfirst+=i
    sumlast=0
    c+=1
  end
  return flag
end

p find_even_index([10,-80,10,10,15,35,20])
