class MyList
  def initialize(*list)
    @list = *list
  end

  def custom_each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
list.custom_each { |item| puts item }
