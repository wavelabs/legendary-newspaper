class Article < ApplicationRecord
  belongs_to :section, foreign_key: :section_id
  belongs_to :author, foreign_key: :author_id, optional: true

  validates :headline, :lead, :body, :section_id, presence: true

  delegate :full_name, to: :author, prefix: true
  delegate :name, to: :section, prefix: true

  scope :approved, -> { where(published: true) }
  scope :unapproved, -> { where(published: false) }
end
