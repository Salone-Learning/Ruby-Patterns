# Class to generate report based on title, body and given strategy_with_classes
class ReportGenerator
  def initialize(title, body, generator_strategy)
    @title = title
    @body = body
    @generation_strategy = generator_strategy
  end

  def generate_report()
    @generation_strategy.generate_report(@title, @body)
  end
end