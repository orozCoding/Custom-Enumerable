module MyEnumerable
  def all?
    return 'Block is not given' unless block_given?

    custom_each { |item| return false unless yield item }
    true
  end
end
