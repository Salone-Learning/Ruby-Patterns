# Module to provide an interface for concrete classes to be observable
module Subject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observer.delete(observer)
  end

  def update_observers(old_salary, salary)
    @observers.each do |observer|
      if observer.respond_to? :call
        observer.call(self, old_salary, salary)
      else
        observer.update(self, old_salary, salary)
      end
    end
  end
end