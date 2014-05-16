WEIGHTS = [1, 4, 3, 7, 5, 8, 6, 9, 10]
 
def valid? tfn=""
  tfn.gsub!(/[^\d]*/, "")
  return false if tfn.empty?
  return false if tfn.size != 9
 
  sum = 0
 
  tfn.chars.map(&:to_i).map.with_index{|x,i| x * WEIGHTS[i]}.map{|x| sum += x}
  
  return (sum % 11 == 0)
end
