# Test class to test Strategy pattern

require 'minitest/autorun'
require_relative '../src/report_generation_strategy'
require_relative '../src/report_generator'
require_relative '../src/text_report_generation_strategy'
require_relative '../src/html_report_generation_strategy'

class StrategyTest < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_generic_strategy
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)
    report_generation_strategy = ReportGenerationStrategy.new
    error = false
    begin
      report_generation_strategy.generate_report(title, body)
    rescue RuntimeError => e
      assert true
      error = true
    end

    if !error
      fail 'Generic class ReportGenerationStrategy should not implement generate_report method.'
    end
  end

  def test_report_generator_with_generic_strategy
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)
    report_generator = ReportGenerator.new(title, body, ReportGenerationStrategy.new)
    error = false

    begin
      report_generator.generate_report()
    rescue RuntimeError => e
      assert true
      error = true
    end

    if !error
      fail 'ReportGenerator should call generate_report method on given generation strategy_with_classes.'
    end
  end

  def test_text_report_generation_strategy
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)
    report_generation_strategy = TextReportGenerationStrategy.new

    begin
      report_generation_strategy.generate_report(title, body)
    rescue RuntimeError => e
      fail 'TextReportGenerationStrategy should implement generate_report method.'
    end

    assert true
  end

  def test_html_report_generation_strategy
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)
    report_generation_strategy = HTMLReportGenerationStrategy.new

    begin
      report_generation_strategy.generate_report(title, body)
    rescue RuntimeError => e
      fail 'HTMLReportGenerationStrategy should implement generate_report method.'
    end

    assert true
  end
end