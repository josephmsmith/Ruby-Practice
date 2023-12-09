#!/usr/bin/env ruby

class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      @line.gsub(/\[\w+\]:\s*/, '').strip
    end
  
    def log_level
      raise 'Please implement the LogLineParser#log_level method'
    end
  
    def reformat
      raise 'Please implement the LogLineParser#reformat method'
    end
  end

  LogLineParser.new("[WARNING]: \tTimezone not set \r\n")