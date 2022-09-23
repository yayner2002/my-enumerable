require_relative './MyEnumerable'
class MyList
include MyEnumerable
def initialize(*list)
  @list = list
end

def each(&any)
  @list.each(&any)
end
end
list = MyList.new(1, 2, 3, 4)
# test all_method
p list.all_method {|e| e < 5}
#true