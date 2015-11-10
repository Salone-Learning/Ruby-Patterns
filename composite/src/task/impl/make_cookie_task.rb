class MakeCookieTask < CompositeTask
  def initialize
    super('Make Cookie')
    add_task(MakeBatterTask.new)
    add_task(FillPanTask.new)
    add_task(BakeTask.new)
    add_task(CutPiecesTask.new)
  end
end