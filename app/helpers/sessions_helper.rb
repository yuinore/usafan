module SessionsHelper
  def current_user_identity
    @current_user_identity ||= if current_user.nil?
                                 nil
                               else
                                 current_user&.user_identity || current_user.build_user_identity
                               end
  end
end
