class Admin < ApplicationRecord
  devise :database_authenticatable, :validatable,
         :recoverable, :rememberable, :trackable
end
