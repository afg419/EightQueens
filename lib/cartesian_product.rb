module Prod
  def cartesian(array1, array2)
    result = []
    array1.each do |i|
      array2.each do |j|
        [] << [i,j]
      end
    end
    result
  end
end
