class Article < ApplicationRecord
  LIMIT_FOR_HOME = 8

  belongs_to :section, foreign_key: :section_id

  has_many :images, dependent: :destroy, as: :pictureable

  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

  delegate :name, to: :section, prefix: true

  validates :headline, :lead, :body, :section_id, presence: true

  default_scope { order("created_at DESC") }
  scope :approved, -> { where(published: true) }
  scope :unapproved, -> { where(published: false) }
  scope :by_section, -> (section_name) { joins(:section).where("sections.name = ?", section_name) }
  scope :recent, -> { limit(LIMIT_FOR_HOME) }
  scope :count_unapproved, -> {where(published: false).count}
  scope :last_unapproved, -> {where(published: false).limit(4)}

  def first_image
    images.first.picture
  end
end
