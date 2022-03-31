module MyEnumerable
  def all?
    return 'Block is not given' unless block_given?

    custom_each { |item| return false unless yield item }
    true
  end

  def any?
    return 'Block is not given' unless block_given?

    custom_each { |item| return true if yield item }
    false
  end

  def filter
    return 'Block is not given' unless block_given?

    output = []
    custom_each { |item| output.push(item) if yield item }
    output
  end
end
