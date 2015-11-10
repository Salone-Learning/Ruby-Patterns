# Class to represent Task with name and parent
class Task
  attr_reader :name
  attr_accessor :parent

  def initialize(name)
    @name = name
    @parent = nil;
  end

  def time_required
    0.0
  end
end