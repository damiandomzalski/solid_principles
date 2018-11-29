class Accommodation
  attr_reader :hotel, :quest, :arrival_date, :departure_date

  def initialize(hotel, quest, arrival_date, departure_date)
    @hotel = hotel
    @quest = quest
    @arrival_date = arrival_date
    @departure_date = departure_date
  end

  def process
    if PaymentChecker.new(hotel, quest, arrival_date, departure_date).client_paid?
      HotelConfirmation.new(hotel, quest, arrival_date, departure_date).room_available?
      ConfimationSender.new(hotel, quest, arrival_date, departure_date).send_confirmation
        puts "Booked"
    end
  end
end

class PaymentChecker
  def initialize(hotel, quest, arrival_date, departure_date)
    @hotel = hotel
    @quest = quest
    @arrival_date = arrival_date
    @departure_date = departure_date
  end

  def client_paid?
    true
  end
end

class HotelConfirmation
  def initialize(hotel, quest, arrival_date, departure_date)
    @hotel = hotel
    @quest = quest
    @arrival_date = arrival_date
    @departure_date = departure_date
  end

  def room_available?
    true
  end
end

class ConfimationSender
  def initialize(hotel, quest, arrival_date, departure_date)
    @hotel = hotel
    @quest = quest
    @arrival_date = arrival_date
    @departure_date = departure_date
  end

  def send_confirmation
    puts "Sending confirmation..."
  end
end
