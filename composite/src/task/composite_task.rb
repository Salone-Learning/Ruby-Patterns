# Derived class from Task class which has a collection of sub tasks.
# This class is a composite class.
class CompositeTask < Task
  attr_reader :tasks

  def initialize(name)
    super(name)
    @tasks = []
  end

  private def add_task(task)
    @tasks << task
    task.parent = self
  end

  private def remove_task(task)
    @tasks.delete(task)
    task.parent = nil
  end

  def time_required
    time = 0.0
    @tasks.each do |task|
      time += task.time_required
    end
    time
  end
end