class Account < ActiveRecord::Base

  after_initialize :init_balance

  private

  def init_balance
    self.balance ||= 0
  end

end
