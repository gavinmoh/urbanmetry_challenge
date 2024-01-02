# require 'debug'

def carrots(t, c, r)
  n = c.length
  zipped = Array(0..n-1).zip(c, r)

  def dfs(time, cs)
    return [] if time <= 0 or cs.empty?

    carrot = cs[0]
    right = dfs(time, cs.drop(1))
    return right if carrot[1] > time

    left = [carrot[0]] + dfs(time-carrot[1], cs.drop(1))

    left_size = left.length
    right_size = right.length

    if left_size == right_size
      left_sum = left.inject(0) { |sum, i| sum + cs.find { |carrot| carrot[0] == i }[2] }
      right_sum = right.inject(0) { |sum, i| sum + cs.find { |carrot| carrot[0] == i }[2] }
      left_sum > right_sum ? left : right
    else
      left_size > right_size ? left : right
    end

  end

  dfs(t, zipped)
end
