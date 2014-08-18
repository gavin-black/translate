class ParseJob < Struct.new(:session_info)
  def perform
    puts "HERE -- start parse"
    sleep(30)
    puts "HERE -- stop parse"
  end
end
