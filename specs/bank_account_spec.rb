require("minitest/autorun")
require("minitest/reporters")
require_relative("../bank_account")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test
  def test_account_holder_name
    bank_account = BankAccount.new("John", 500, "personal")
    assert_equal("John", bank_account.get_holder_name())
  end

  def test_balance
    bank_account = BankAccount.new("John", 500, "buisness")
    assert_equal(500, bank_account.get_balance())
  end

  def test_monthly_fee_business
    account = BankAccount.new("Bob", 5000, "business")
    account.pay_monthly_fee
    assert_equal(4950, account.balance)
  end

  def test_monthly_fee_personal
    account = BankAccount.new("Alice", 5000, "personal")
    account.pay_monthly_fee
    assert_equal(4990, account.balance)
  end
end
