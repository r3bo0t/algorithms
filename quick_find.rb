# Quick find search for dynamic connectivity problem
# initialize: O(n)
# find: O(1)
# union: O(n)
#
class QF
  attr_accessor :nodes
  def initialize n
    @nodes = Array.new
    0.upto(n-1) do |i|
      @nodes[i] = i
    end
  end

  def union p, q
    if connected(p, q)
      puts 'already connected'
    else
      value = @nodes[p]
      0.upto(@nodes.length-1) do |i|
        if @nodes[i] == value
          @nodes[i] = @nodes[q]
        end
      end
    end
  end

  def connected p, q
    @nodes[p] == @nodes[q]
  end

  def to_s
    puts @nodes
  end
end
