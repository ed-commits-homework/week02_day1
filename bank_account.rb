class BankAccount
  attr_reader :balance
  attr_accessor :holder_name, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def get_holder_name
    return @holder_name
  end

  def get_balance
    return @balance
  end

  def pay_monthly_fee
    if @type == "business"
      @balance -= 50
    else
      @balance -= 10
    end
  end
end
