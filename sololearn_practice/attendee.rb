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

    def has_pass?
        @pass_id != nil
      end
    
      def fits_ride?(ride_minimum_height)
        @height >= ride_minimum_height
      end
    
      def allowed_to_ride?(ride_minimum_height)
        fits_ride?(ride_minimum_height) && has_pass?
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

puts "Testing Attendee class methods..."

# Test setup: Create an attendee
attendee = Attendee.new(170) # Height is 170 cm

# Test 1: has_pass? method
puts "Test 1: has_pass? method before issuing a pass"
puts attendee.has_pass? ? "Fail: Attendee should not have a pass" : "Pass: Attendee does not have a pass"

# Issue a pass and test again
attendee.issue_pass!(12345)
puts "Test 1: has_pass? method after issuing a pass"
puts attendee.has_pass? ? "Pass: Attendee has a pass" : "Fail: Attendee should have a pass"

# Test 2: fits_ride? method
puts "Test 2: fits_ride? method with minimum height requirement of 160 cm"
puts attendee.fits_ride?(160) ? "Pass: Attendee fits the ride" : "Fail: Attendee should fit the ride"

puts "Test 2: fits_ride? method with minimum height requirement of 180 cm"
puts attendee.fits_ride?(180) ? "Fail: Attendee should not fit the ride" : "Pass: Attendee does not fit the ride"

# Test 3: allowed_to_ride? method
puts "Test 3: allowed_to_ride? method with ride minimum height 160 cm"
puts attendee.allowed_to_ride?(160) ? "Pass: Attendee is allowed to ride" : "Fail: Attendee should be allowed to ride"

# Revoke pass and test again
attendee.revoke_pass!
puts "Test 3: allowed_to_ride? method after revoking pass, with ride minimum height 160 cm"
puts attendee.allowed_to_ride?(160) ? "Fail: Attendee should not be allowed to ride without a pass" : "Pass: Attendee is not allowed to ride"

puts "Testing complete."