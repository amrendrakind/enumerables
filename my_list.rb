require_relative 'enumerables'

class MyList
  include MyEnumerables
  def initialize(*list)
    @list = list
  end

  def each
    li = 0
    while li < @list.length
      yield @list[li]
      li += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
print "#{list.filter(&:even?)} \n"
