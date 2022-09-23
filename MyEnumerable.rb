module MyEnumerable
  def all?
    return "No block given" unless block_given?
      each do |all_elements|
        return false unless yield(all_elements)
      end
      true
  end

  def any?
    each do |all_elements|
      return true if yield(all_elements)
    end
    false
  end

end