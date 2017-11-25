def tsp_greed(data, start)
  path = [start]
  visited = [start]
  current_city = start


  def find_closest(city, d, vis)
    def distance(point1, point2)
      return Math.sqrt(((point1[0] - point2[0])**2 + (point1[1] - point2[1])**2).abs)
    end

    closest_city = nil
    d.each do |k, v|
      if (k != city) && (!vis.include? k)
        if closest_city == nil
          closest_city = k
        elsif distance(d[city], d[k]) < distance(d[city], d[closest_city])
          closest_city = k
        end
      end
    end
    return closest_city
  end

  data.each do |k, v|
    c = find_closest(current_city, data, visited)
    path.push(c) if c != nil
    visited.push(c)
    current_city = c
  end

  return path
end

data = {
  a: [0, 0],
  b: [1, 3],
  c: [4, 2],
  d: [1, 2],
  e: [6, 6],
  f: [-1, -2],
  g: [-2, -1]
}

p tsp_greed(data, :a)
