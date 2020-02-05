class Collatz

def collatz(num)
  count = 1
  if num < 0
    raise ArgumentError.new 'Positive numbers only'
  end

  while num != 1
     count +=1
    num = num.even? ? (num / 2) : (num * 3 + 1)
  end
end


def max
  largest_length = 0
  largest_num =  0
  (1 .. 1000000000).each do |n|
    length = max(n)
    if length > largest_length
      largest_length = length
      largest_num = n
    end
  end
  {:largest_num => largest_num, :largest_length => largest_length}
end
 



end