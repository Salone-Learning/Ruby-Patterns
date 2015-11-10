# Test class to test composite pattern

require 'rspec'
require_relative '../src/task/task'
require_relative '../src/task/composite_task'
require_relative '../src/task/impl/add_liquid_task'
require_relative '../src/task/impl/add_ingredients_task'
require_relative '../src/task/impl/mixing_task'
require_relative '../src/task/impl/fill_pan_task'
require_relative '../src/task/impl/bake_task'
require_relative '../src/task/impl/cut_pieces_task'
require_relative '../src/task/impl/make_batter_task'
require_relative '../src/task/impl/make_cookie_task'

describe 'Composite' do

  it 'performs generic task' do
    task = Task.new('generic task')
    expect(task.time_required).to eq(0.0)
  end

  it 'performs generic composite task' do
    task = CompositeTask.new('generic composite task')
    expect(task.time_required).to eq(0.0)
  end

  it 'perform add liquid task' do
    task = AddLiquidTask.new
    expect(task.time_required).to eq(1.0)
  end

  it 'perform add ingredients task' do
    task = AddIngredientsTask.new
    expect(task.time_required).to eq(2.0)
  end

  it 'perform mixing task' do
    task = MixingTask.new
    expect(task.time_required).to eq(5.0)
  end

  it 'perform fill pan task' do
    task = FillPanTask.new
    expect(task.time_required).to eq(1.0)
  end

  it 'perform bake task' do
    task = BakeTask.new
    expect(task.time_required).to eq(10.0)
  end

  it 'perform cut pieces task' do
    task = CutPiecesTask.new
    expect(task.time_required).to eq(4.0)
  end

  it 'perform make batter task' do
    task = MakeBatterTask.new
    expect(task.time_required).to eq(8.0)
  end

  it 'perform make cookie task' do
    task = MakeCookieTask.new
    expect(task.time_required).to eq(23.0)
  end

  it 'add task' do
    CompositeTask.send(:public, *CompositeTask.private_instance_methods)
    task = MakeBatterTask.new
    task.add_task(Task.new('Test Task'))

    expect(task.parent).to eq(nil)
    expect(task.tasks.length).to eq(4)

    task.tasks.each do |sub_task|
      expect(sub_task.parent).to eq(task)
    end
  end
end