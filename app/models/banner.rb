class Banner < ApplicationRecord
  include EnumI18nHelper
  enum position: { top: 1, right_first: 2, right_second: 3 }

  before_create :delete_by_position

  has_one :image, dependent: :destroy, as: :pictureable

  accepts_nested_attributes_for :image, allow_destroy: true

  validates :image, presence: true

  scope :by_position, -> (position) { where(position: position) }

  private
  def delete_by_position
    Banner.by_position(self.position).destroy_all
  end
end
