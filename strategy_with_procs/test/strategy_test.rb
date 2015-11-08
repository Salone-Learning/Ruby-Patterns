# Test class to test strategy pattern with procs

require 'minitest/autorun'
require_relative '../src/report_generator'

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

  def test_text_report_generation
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)

    report_generator = ReportGenerator.new(title, body, ->(title, body) {
      puts title
      body.each do |line|
        puts line
      end
    })
    report_generator.generate_report
  end

  def test_html_report_generation
    title = "Monthly Report"
    body = %w(Line1 Line2 Line3)

    report_generator = ReportGenerator.new(title, body, ->(title, body) {
      puts "<html>\n<head>#{title}</head>"
      puts "<body>"
      body.each do |line|
        puts "<p>#{line}</p>"
      end
      puts "</body>\n</html"
    })
    report_generator.generate_report
  end
end