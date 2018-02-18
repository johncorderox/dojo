class BankAccount
  @@accounts_count = 0
  attr_accessor :checking_balance, :saving_balance
  def initialize
    @account_number = 0
    @checking_balance = 0
    @saving_balance = 0
  #  @aacounts_count += 1
  #  @interest = 0.01
  end
  def an_call
    account_number
  end
  def deposit account, amount
    if account == "checking"
      @checking_balance += amount
    else
      @saving_balance += amount
    end
  end
  def account_information
    puts "#{@account_number}"
    puts "#{@checking_balance}, #{@saving_balance}, #{@interest}"
  end
  def withdrawl account, amount
    if account == "checking"
      if amount > @checking_balance
        puts "You dont have enough funds"
      else
        @checking_balance -= amount
      end
    end
  end
  private
    def account_number
      @account_number = rand(111111..999999)
      puts "#{@account_number}"
    end
end
