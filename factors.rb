def factors n
  (1..(Math.sqrt(n).floor)).select{|f| n % f == 0}
end

n = ARGV[0] ? ARGV[0].to_i : 100
candidates = ((n/2).floor..n).to_a
factors = candidates.map(&method(:factors))
k_factors = factors.max_by(&:count)
k = candidates[factors.index k_factors]
puts "The natural less than or equal to #{n} with"
puts "the greatest number of factors is #{k}."
puts "#{k} has #{k_factors.count * 2} factors:"
k_factors.each{|f| puts "#{k} = #{f} x #{k/f}"}
