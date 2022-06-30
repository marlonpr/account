class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance = 100)
      @name = name
      @balance = balance
    end
    private
    def pin
      @pin = 12345
    end
    def pin_error
      return "Access denied: incorrect PIN."
    end
    public
    def display_balance(pin_number)
      if pin_number == pin
        puts "Balance $#{@balance}"
      else
        puts pin_error
      end
    end
    def withdraw(pin_number, amount=100)
      if pin_number == pin
        @balance  -= amount
        puts "Withdrew #{amount}. New balance $#{@balance}"
      else
        puts pin_error
      end
    end
     def deposit(pin_number, amount=100)
      if pin_number == pin
        @balance  += amount
        puts "Added #{amount}. New balance $#{@balance}"
      else
        puts pin_error
      end
    end
   end
  
  checking_account = Account.new("Marlon", 100_000)
  checking_account.display_balance(12345)
  checking_account.withdraw(12345,200)
  checking_account.deposit(12345,2300)
  
  
  