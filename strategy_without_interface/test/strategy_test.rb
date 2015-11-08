# Test class to test Strategy pattern without common interface based on dynamic typing

require 'minitest/autorun'
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