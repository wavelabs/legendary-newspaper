class Editor < ApplicationRecord
  devise :database_authenticatable, :validatable,
         :recoverable, :rememberable, :trackable
end
