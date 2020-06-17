
class LimitedArray < Array
  attr_accessor :max_size
  def initialize(size=0, obj=nil)
     @max_size = 200
     super
  end
  def push(line)
     self.shift while self.length >= @max_size
     super
  end
  def shove(line)
     push(line)
  end
  def history
     Array.new
  end
end