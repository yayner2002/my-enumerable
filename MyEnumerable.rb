module MyEnumerable
  def all_method
    return "No block given" unless block_given?
    each do |el|
      return false unless yield(el)
    end
    true
  end

end