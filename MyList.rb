require_relative './MyEnumerable'
class MyList
include MyEnumerable
def initialize(*list)
  @list = list
end

def each(&all_elements)
  @list.each(&all_elements)
end
end
list = MyList.new(1, 2, 3, 4)
# test all_method
p(list.all? {|e| e < 5})
#true
p list.all? {|e| e > 5}
#false
p list.any? {|e| e == 2}
#true
p list.any? {|e| e == 5}
#false
list.filter {|e| e.even?}