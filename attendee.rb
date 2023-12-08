#!usr/bin/env ruby

# intro to instance variables

=begin
design system to administer attendance and rides
=end

class Attendee
    def initialize(height)
        @height = height
        @pass_id = nil
      end
  
    def height
        @height
    end
  
    def pass_id
      @pass_id
    end
  
    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
  
    def revoke_pass!
      @pass_id = nil
    end
  end

  attendee = Attendee.new(170) # 170 could be the height

# Check the height
puts "Attendee height: #{attendee.height}" # Should output 170

# Issue a pass to the attendee
attendee.issue_pass!("PASS123")
puts "Attendee pass ID after issuing: #{attendee.pass_id}" # Should output PASS123

# Revoke the pass
attendee.revoke_pass!
puts "Attendee pass ID after revoking: #{attendee.pass_id}"

  