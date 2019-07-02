class Transfer

  attr_reader :sender, :reciever, :amount
  attr_accessor :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @reciever.valid?
      true
    else
      false
    end
  end







end
