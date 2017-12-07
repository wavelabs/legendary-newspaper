class Section < ApplicationRecord
  has_many :articles, inverse_of: :section, dependent: :destroy

  validates :name, presence: true

  scope :with_articles, -> { joins(:articles).distinct }

  def recent_articles
    self.articles.recent
  end
end
