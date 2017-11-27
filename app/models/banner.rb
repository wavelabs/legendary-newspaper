class Banner < ApplicationRecord
  include EnumI18nHelper

  enum position: { top: 1, right_first: 2, right_second: 3 }

  has_attached_file :picture, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  scope :banners_upload_top, -> { where(position: "top") }
  scope :banner_top, -> { banners_upload_top.last}
end
