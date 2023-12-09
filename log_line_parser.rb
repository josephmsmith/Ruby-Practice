#!/usr/bin/env ruby

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[\w+\]:\s*/, '').strip
  end

  def log_level
    t1 = @line.index("[")+1
    t2 = @line.index("]")-1
    @line[t1,t2].downcase
  end

  def reformat
    message + " (" + log_level + ")"
  end
end

# testing 
puts LogLineParser.new("[WARNING]: \tTimezone not set \r\n").message
puts LogLineParser.new('[ERROR]: Disk full').log_level
puts LogLineParser.new('[WARNING]: Unsafe password').log_level
puts LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n").reformat