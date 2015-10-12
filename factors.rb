def factors n
  (1..(Math.sqrt(n).floor)).select{|f| n % f == 0}
end

n = ARGV[0] ? ARGV[0].to_i : 100
n = n + 1 if n % 2 == 1
k = (n/2..n).step(2).max_by{|x| factors(x).count}
factors = factors(k)
puts "The natural less than or equal to #{n} with"
puts "the greatest number of factors is #{k}."
puts "#{k} has #{factors.count * 2} factors:"
factors.each{|f| puts "#{k} = #{f} x #{k/f}"}
