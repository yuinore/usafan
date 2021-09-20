class TownController < ApplicationController
  before_action :set_user_coin

  def index
  end

  def create
    # TODO: player lock

    if current_user_identity.stamina >= 5
      current_user_identity.stamina -= 5
      current_user_identity.save!

      @user_coin.amount += 10
      @user_coin.save!
    end

    redirect_to town_index_path
  end

  private

    def set_user_coin
      @user_coin = UserCoin.find_or_initialize_by(user_id: current_user.id)
    end
end
