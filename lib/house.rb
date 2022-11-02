class House
  attr_reader :price,
              :address,
              :rooms
  def initialize(price, address)
    @price = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end
  
  def add_room(room)
    @rooms << room
  end
  
  def above_market_average
  end
    
  # def rooms_from_category
  # end
  # 
  # def area
  # end
  # 
  # def details
  # end
    
end