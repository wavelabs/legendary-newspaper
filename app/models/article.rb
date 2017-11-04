class Article < ApplicationRecord
  belongs_to :section, foreign_key: :section_id

  validates :headline, :lead, :body, :section_id, presence: true

  def section_name
    self.section.name
  end
end
