# Generic strategy_with_classes to provide an interface for concrete strategies
class ReportGenerationStrategy
  def generate_report(title, body)
    raise "Called generate_report on #{self.class.name}"
  end
end