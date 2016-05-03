module Prod
  def self.cartesian(array1, array2)
    result = []
    array1.each do |i|
      array2.each do |j|
        result << [i,j]
      end
    end
    result
  end
end
