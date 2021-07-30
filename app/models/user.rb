class User < ApplicationRecord
        extend Devise::Models
        # Include default devise modules.
        # :confirmable Se excluye la confirmacion de mail de un usuario
        # :trackable ademas se quito un modulos para que funcionara "undefined method `current_sign_in_at'"
        devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :validatable,
                :omniauthable
        include DeviseTokenAuth::Concerns::User
end
