class Transfer

  attr_accessor :receiver, :name, :sender, :amount, :status
  
  def initialize (sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false 
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif status == "complete"
      "Transaction was already excuted"
    else
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
   end
  end

def reverse_transfer 
  if @status == "complete"
    @sender.balance += @amount
    @receiver.balance -= @amount
    @status = "reversed"
  end
end


  end
  

