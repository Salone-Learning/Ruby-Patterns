# Class to generate report based on title, body and given strategy proc
class ReportGenerator
  def initialize(title, body, generation_strategy)
    @title = title
    @body = body;
    @generation_strategy = generation_strategy
  end

  def generate_report()
    @generation_strategy.call(@title, @body)
  end
end