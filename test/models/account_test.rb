require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  setup do
    @account = Account.new
  end

  test "An account with no deposits should return 0 for its amount" do
    assert_equal 0,@account.balance
  end
end
