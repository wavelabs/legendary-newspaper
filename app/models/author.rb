class Author < ApplicationRecord
  has_many :articles, inverse_of: :author

  validates :first_name, :last_name, presence: true

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
