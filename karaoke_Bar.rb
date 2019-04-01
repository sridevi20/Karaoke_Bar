class Bar
  attr_reader :name, :entry_fee

  def initialize(name, entry_fee)
    @name = name
    @entry_fee = entry_fee
  end

  def check_enough_money_guests?(guest)
    return entry_fee <= guest.money()

  end

  # def allow_guest_to_enter_bar?(guest)
  #   if check_enough_money_guests?()
  #     @guest.money() -= entry_fee
  # end
 end
