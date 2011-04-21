module Haml
  module Precompiler
    alias_method :process_line_without_mustache, :process_line

    def process_line(text, index)
      if text =~ /^\{\{.*\}\}$/
        @index = index + 1
        push_merged_text(text, 1, true)
        concat_merged_text("\n")
        return
      else
        process_line_without_mustache(text, index)
      end
    end
  end
end

