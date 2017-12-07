class Landing::BaseController < ApplicationController
  layout 'landing'

  before_action :set_banners

  private
  def set_banners
    @top_banner = Banner.by_position("top").last
    @banner_right_first = Banner.by_position("right_first").last
    @banner_right_second = Banner.by_position("right_second").last
  end
end
