class UnionFind
    def initialize(size)
        @rank = Array.new(size, 0)
        @parent = Array.new(size, &:itself)
    end
    def unite(id_x, id_y)
        x_parent = root(id_x)
        y_parent = root(id_y)
        return if x_parent == y_parent
        if @rank[x_parent] > @rank[y_parent]
            @parent[y_parent] = x_parent
        else
            @parent[x_parent] = y_parent
            @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
        end
    end
    def root(id)
        @parent[id] == id ? id : @parent[id] = root(@parent[id])
    end
    def same_parent?(id_x, id_y)
        root(id_x) == root(id_y)
    end
    def max_rank
      @rank.max
    end
    def parent(id)
      if @parent[id] == id
        @parent[id]
      else
        @parent[id] = parent(@parent[id])
      end
    end
end
 
n, m = gets.split(" ").map(&:to_i)
uf = UnionFind.new(n)
m.times{ |i|
  a, b = gets.split(" ").map(&:to_i)
  uf.unite(a-1, b-1)
}
ans = Array.new(n, 0)
n.times{ |i|
  ans[uf.parent(i)] += 1
}
p ans.max