// Test class to test report generator

require 'minitest/autorun'
require_relative '../src/ReportGenerator'
require_relative '../src/TextReportGenerator'
require_relative '../src/HTMLReportGenerator'

class TestTemplate < Minitest::Test
    def test_generic_report_generator()
        report_generator = ReportGenerator.new("Test Report", ["Line1", "Line2", "Line3"])
        error = false
        begin
            report_generator.generate_report()
        rescue RuntimeError => e
            assert true
	    error = true
        end

	if !error
            assert false, "Method generate_line should not be implemented for #{report_generator.class.name}"
        end
    end

    def test_text_report_generator()
        report_generator = TextReportGenerator.new("Test Report", ["Line1", "Line2", "Line3"])
        begin
            report_generator.generate_report()
        rescue
            assert false, "Method generate_line is not implemented for #{report_generator.class.name}"
        end

        assert true
    end

    def test_html_report_generator()
        report_generator = HTMLReportGenerator.new("Test Report", ["Line1", "Line2", "Line3"])
        begin
            report_generator.generate_report()
        rescue
            assert false, "Method generate_line is not implemented for #{report_generator.class.name}"
        end

        assert true
    end
end