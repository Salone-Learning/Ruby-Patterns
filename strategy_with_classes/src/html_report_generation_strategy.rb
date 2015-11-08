# Strategy to generate HTML based report
class HTMLReportGenerationStrategy < ReportGenerationStrategy
  def generate_report(title, body)
    puts "<html>\n<head>#{title}</head>"
    puts "<body>"
    for line in body
      puts "<p>#{line}</p>"
    end
    puts "</body>\n</html"
  end
end