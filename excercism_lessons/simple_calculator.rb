#!/usr/bin/env ruby


class SimpleCalculator
    ALLOWED_OPERATIONS = ['+', '*', '/'].freeze
  
    def self.calculate(first_operand, second_operand, operation)
      raise ArgumentError, "Operation not allowed" unless ALLOWED_OPERATIONS.include?(operation)
  
      begin
        result = case operation
                 when '+'
                   first_operand + second_operand
                 when '*'
                   first_operand * second_operand
                 when '/'
                   raise ZeroDivisionError, "Cannot divide by zero" if second_operand == 0
                   first_operand / second_operand
                 end
        "#{first_operand} #{operation} #{second_operand} = #{result}"
      rescue ZeroDivisionError => e
        "Error: #{e.message}"
      rescue => e
        "An error occurred: #{e.message}"
      end
    end
  end
  