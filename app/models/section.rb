class Section < ApplicationRecord
  has_many :articles, inverse_of: :section, dependent: :destroy

  validates :name, presence: true
end
