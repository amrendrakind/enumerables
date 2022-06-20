module MyEnumerables
  def all?
    each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?
    each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    filtered_items = []
    each do |item|
      filtered_items.push(item) if yield(item)
    end
    filtered_items
  end
end
