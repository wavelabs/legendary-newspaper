class Landing::BaseController < ApplicationController
  layout 'landing'

  before_action :set_banners

  private
  def set_banners
    @banner_all = Banner.all.to_a
    @top_banner = find_banner(@banner_all, "top")
    @banner_right_first = find_banner(@banner_all, "right_first")
    @banner_right_second = find_banner(@banner_all, "right_second")
    @banner_right_third = find_banner(@banner_all, "right_third")
  end

  def find_banner(banners, position)
    banners.find { |banner| banner.position == position }
  end
end
