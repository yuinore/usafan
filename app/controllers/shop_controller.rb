class ShopController < GameController
  def index
    @trades = Trade.all.to_a
  end
end
