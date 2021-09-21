# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string(255)
#  email                  :string(255)
#  encrypted_password     :string(255)      default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  meta                   :text(65535)
#  name                   :string(255)
#  password_digest        :string(255)
#  provider               :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sign_in_count          :integer          default(0), not null
#  token                  :string(255)
#  uid                    :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         # :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable, omniauth_providers: %i(google)

  has_one :user_coin, dependent: :destroy
  has_one :user_identity, dependent: :destroy

  def build_user_identity
    super(stamina: 100, stamina_updated_at: Time.current)
  end

  protected

    def self.find_for_google(auth)
      user = User.find_by(email: auth.info.email)
      unless user
        user = User.create(name:     auth.info.name,
                          provider: auth.provider,
                          uid:      auth.uid,
                          token:    auth.credentials.token,
                          email:    auth.info.email,
                          password: Devise.friendly_token[0, 20],
                          meta:     auth.to_yaml)
      end
      user
    end
end
