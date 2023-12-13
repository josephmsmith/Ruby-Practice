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
2. Implement the SavingsAccount.annual_balance_update method to calculate the annual balance update, 
    taking into account the interest rate:

=end
# turn into float
module SavingsAccount
    # calc interest_rate based on balance, initiate using self 
    def self.interest_rate(balance)
        if balance < 0
            3.213
        elsif balance < 1000
            0.5
        elsif balance < 5000
            1.621
        else
            2.475
        end
    end
    # calc balance using interest rate 
    def self.annual_balance_update(balance)
        balance * (1+ interest_rate(balance)/100)
    end
    
    def self.years_before_desired_balance(current_balance, desired_balance)
        years = 1
        while annual_balance_update(current_balance) < desired_balance
            current_balance += current_balance * (interest_rate(current_balance) / 100)
            years += 1
        end
        years.floor
    end
end

puts SavingsAccount.interest_rate(200)
# test
puts SavingsAccount.interest_rate(1007)
puts SavingsAccount.interest_rate(5045)
puts SavingsAccount.interest_rate(-34)
puts SavingsAccount.annual_balance_update(200)
puts SavingsAccount.years_before_desired_balance(8080.80,9090.9)