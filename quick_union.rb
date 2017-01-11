# Quick Union search 
# initialize: O(n)
# find: O(n) in worst case, if tree is one big linear relation
# union: O(n) in worst case
# 
class QU
  def initialize n
    @nodes = Array.new
    0.upto(n-1) do |i|
      @nodes[i] = i
    end
  end

  def union p, q
    @nodes[root(p)] = root(q)
  end

  def connected p, q
    root(p) == root(q)
  end

  private def root p
    while @nodes[p] != p
      p = @nodes[p]
    end
    return p
  end
end
