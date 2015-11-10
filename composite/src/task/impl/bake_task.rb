class BakeTask < Task
  def initialize
    super('Bake')
  end

  def time_required
    10.0
  end
end