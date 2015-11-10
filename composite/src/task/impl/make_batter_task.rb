class MakeBatterTask < CompositeTask
  def initialize
    super('Make Batter')
    add_task(AddIngredientsTask.new)
    add_task(AddLiquidTask.new)
    add_task(MixingTask.new)
  end
end