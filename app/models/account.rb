class Account < ActiveRecord::Base

  after_initialize :init_balance


  def deposit_amount(amount)
    self.balance += amount
  end

  def withdraw_amount(amount)
    if amount < self.balance
      self.balance -= amount
    else
      false
    end
  end

  private

  def init_balance
    self.balance ||= 0
  end


end
