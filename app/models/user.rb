class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :products,dependent: :destroy
         def admin?
          has_role?(:admin)
        end
        def client?
          has_role?(:client)
        end 
end
