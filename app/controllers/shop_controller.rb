class ShopController < GameController
  def index
    p current_user.user_cards.to_s
    @trades = Trade.all.to_a
  end

  def create
    trade = Trade.find(params[:trade_id])

    # TODO: StandardError以外のエラーにする
    begin
      ActiveRecord::Base.transaction do
        current_user.add_entity(trade.dst_entity)

        trade.src_entities.each do |entity|
          current_user.remove_entity(entity)
        end

        flash[:notice] = "交換しました。"
      end
    rescue
      flash[:alert] = "交換できませんでした。"
    end

    redirect_to shop_index_path
  end
end
