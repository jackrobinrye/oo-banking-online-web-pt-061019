require "pry"

class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    # binding.pry
    if @sender.valid? == false || @sender.balance < @amount
      "Transaction rejected. Please check your account balance."
    elsif @status != "complete"
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    end
  end





end
