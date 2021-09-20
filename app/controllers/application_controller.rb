class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :logged_in_user
  before_action :update_stamina

  private

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end

    def update_stamina
      current_user_identity&.update_stamina
    end
end
