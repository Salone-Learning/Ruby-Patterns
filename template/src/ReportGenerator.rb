// Generic class used to generate report using
// Template pattern
class ReportGenerator
    def initialize(title, body)
        @title = title
        @body = body
    end

    def generate_report()
        generate_start()
        generate_header()
        generate_body_start()
        generate_body()
        generate_footer()
        generate_body_end()
        generate_end()
    end

    private def generate_start()
    end

    private def generate_header()
        generate_line(@title)
    end

    private def generate_body_start()
    end

    private def generate_body()
        for line in @body
            generate_line(line)
        end
    end

    private def generate_footer()
    end

    private def generate_body_end()
    end

    private def generate_end()
    end

    private def generate_line(line)
        raise "Called generic ReportGenerator"
    end
end