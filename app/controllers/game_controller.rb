class GameController < ApplicationController
  before_action :check_login
  before_action :update_stamina

  private
    def check_login
      unless request.path_info == "/" || user_signed_in?
        redirect_to root_url
      end
    end

    def update_stamina
      current_user_identity&.update_stamina
    end

end
