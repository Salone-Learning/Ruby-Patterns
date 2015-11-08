// Report generator to generate HTML report
class HTMLReportGenerator < ReportGenerator
    private def generate_start()
        puts "<html>"
    end

    private def generate_header()
        puts "<head>" + @title + "</head>"
    end

    private def generate_body_start()
        puts "<body>"
    end

    private def generate_line(line)
        puts "<p>" + line + "</p>"
    end

    private def generate_body_end()
        puts "</body>"
    end

    private def generate_end()
        puts "</html>"
    end
end