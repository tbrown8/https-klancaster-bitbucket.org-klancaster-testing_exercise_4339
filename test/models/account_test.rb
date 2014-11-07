require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  setup do
    @account = Account.new
  end

  test "An account with no deposits should return 0 for its amount" do
    assert_equal 0,@account.balance
  end

  test "An account with one deposit should have a balance equal to that deposit" do
    @account.deposit_amount(10)
    assert_equal 10, @account.balance
  end

  test "Withdrawing from the account should alter the balance" do
    @account.deposit_amount(100)
    assert @account.withdraw_amount(10)
    assert_equal 90, @account.balance
  end

  test "A user cannot withdraw more than what is in the account" do
    @account.deposit_amount(10)
    assert  !@account.withdraw_amount(100), "Withdrawal incorrectly allowed"
    assert_equal 10, @account.balance
  end
end
