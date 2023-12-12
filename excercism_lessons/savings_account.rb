#!/usr/bin/env ruby

=begin
In this exercise you will be working with savings accounts. 
Each year, the balance of a savings account is updated based on the interest rate. 
The interest rate the bank gives depends on the amount of money in the accounts (its balance):

0.5% for a non-negative balance less than 1000 dollars.
1.621% for a positive balance greater than or equal to 1000 dollars and less than 5000 dollars.
2.475% for a positive balance greater than or equal to 5000 dollars.
3.213% for a negative balance (results in negative interest).

1.Implement the SavingsAccount.interest_rate method to calculate the interest rate based on the specified balance:
test using SavingsAccount.interest_rate(200.75)


=end
# turn into float
module SavingsAccount
    def self.interest_rate(balance)
        if (0..1000).include?(balance)
            0.5
        elsif (1000..5000).include?(balance)
            0.01621
        elsif balance >= 5000
            0.02475
        else
            -0.03213
        end
    end
end

puts SavingsAccount.interest_rate(200.75)
# test
# puts SavingsAccount.interest_rate(1007)
# puts SavingsAccount.interest_rate(5045)
# puts SavingsAccount.interest_rate(-34)