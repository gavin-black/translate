require 'open-uri'

class ParseJob < Struct.new(:upload)
  def perform
    path = "#{upload.scenario}"
    face = ""
    open('http://0.0.0.0:3000' + path) { |f|
      f.each_line do |line|
        linep = line.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
        if /\[n\]/.match(linep)
          line_formatted = linep.gsub( %r{\[([^]]+)\]} , "")
          puts face + ": " + line_formatted
          puts ""
        elsif /\[open/.match(linep)
          face = linep
        elsif /;/.match(linep)
          puts "COMMENT -- #{linep}"
        end
      end
      f.close
    }
  end
end
