class Section < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  before_save :regenerate_slug, if: :name_changed?

  has_many :articles, inverse_of: :section, dependent: :destroy

  validates :name, presence: true

  scope :with_articles, -> { joins(:articles).distinct }

  def recent_articles
    self.articles.approved.recent
  end

  private
  def regenerate_slug
    self.slug = name.parameterize
  end
end
