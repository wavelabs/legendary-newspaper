class Article < ApplicationRecord
  belongs_to :section, foreign_key: :section_id
  belongs_to :author, foreign_key: :author_id, optional: true

  has_many :images, dependent: :destroy, as: :pictureable

  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

  delegate :full_name, to: :author, prefix: true
  delegate :name, to: :section, prefix: true

  validates :headline, :lead, :body, :section_id, presence: true

  default_scope { order("created_at DESC") }
  scope :approved, -> { where(published: true) }
  scope :unapproved, -> { where(published: false) }
end
