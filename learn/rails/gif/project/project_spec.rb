require_relative 'bank' # include our Project class in our spec file
RSpec.describe BankAccount do
  before(:each) do
    @bank = BankAccount.new # create a new project and make sure we can set the name attribute
  end
  it 'has a getter method for retrieving checking balance' do
    @bank_checking = @bank.checking_balance # this line would fail if our class did not have a setter method
    expect(@bank_checking).to eq(0) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end
end
