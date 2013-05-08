require 'haml'
module Haml
  class Parser
    alias_method :process_line_without_mustache, :process_line

    def process_line(text, index)
      if text =~ /^\{\{.*\}\}$/
        return push mustache(text)
      else
        process_line_without_mustache(text, index)
      end
    end

    def mustache(line)
      ParseNode.new(:script, @index, :text => %Q{\"#{line}\"},
        :escape_html => false,
        :self_closing => true,
        :dont_push_end => true)

    end
  end
end
