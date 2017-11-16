class Article < ApplicationRecord
  default_scope { order("created_at DESC") }

  belongs_to :section, foreign_key: :section_id
  belongs_to :author, foreign_key: :author_id, optional: true

  validates :headline, :lead, :body, :section_id, presence: true


  def section_name
    self.section.name
  end

  def author_name
    self.author.full_name
  end
end
