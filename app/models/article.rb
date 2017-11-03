class Article < ApplicationRecord
  validates :headline, :lead, :body, presence: true
end
