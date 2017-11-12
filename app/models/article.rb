class Article < ApplicationRecord
  belongs_to :section, foreign_key: :section_id
  belongs_to :author, foreign_key: :author_id, optional: true

  has_one :image

  accepts_nested_attributes_for :image, allow_destroy: true

  validates :headline, :lead, :body, :section_id, presence: true

  delegate :name, to: :section, prefix: true
  delegate :full_name, to: :author, prefix: true
end
