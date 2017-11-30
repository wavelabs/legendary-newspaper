class Banner < ApplicationRecord
  include EnumI18nHelper

  has_one :image, dependent: :destroy, as: :pictureable

  accepts_nested_attributes_for :image, allow_destroy: true

  enum position: { top: 1, right_first: 2, right_second: 3 }

  scope :by_position, -> (position) { where(position: position) }
  scope :banners_upload_top, -> { by_position("top") }
  scope :banners_upload_right_first, -> { by_position("right_first") }
  scope :banners_upload_right_second, -> { by_position("right_second") }

  def self.delete_by_position(position)
    by_position(position).destroy_all
  end
end
