# Weighted Quick union 
# initialize: O(1)
# find: O(logN)
# union: O(logN)
#
class WeightedQU
  def initialize n
    @nodes = Array.new
    @weight = Array.new
    0.upto(n-1) do |i|
      @nodes[i] = i
      @weight[i] = 1
    end
  end

  def connected p, q
    root(p) == root(q)
  end

  def union p, q
    p_root = root(p)
    q_root = root(q)
    return 'already connected' if p_root == q_root
    if @weight[p_root] < @weight[q_root]
      @nodes[p_root] = q_root
      @weight[q_root] += @weight[p_root]
    else
      @nodes[q_root] = p_root
      @weight[p_root] += @weight[q_root]
    end
  end

  private def root p
    while @nodes[p] != p
      p = @nodes[p]
    end
    p
  end

end
