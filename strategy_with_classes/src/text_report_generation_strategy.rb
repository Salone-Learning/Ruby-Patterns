# Strategy to generate Text based report
class TextReportGenerationStrategy < ReportGenerationStrategy
  def generate_report(title, body)
    puts title
    for line in body
      puts line
    end
  end
end