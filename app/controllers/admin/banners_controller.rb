class Admin::BannersController < Admin::BaseController
  before_action :set_banner, only: [:show, :destroy]

  def index
    @banners = Banner.all
  end
  def new
    @banner = Banner.new
    @banner.build_image unless @banner.image
  end

  def create
    @banner = Banner.new(banner_params)
    respond_to do |format|
      if @banner.save
        format.html { redirect_to admin_banner_path(@banner), notice: 'Banner was successfully created.' }
        format.json { render :show, status: :created, location: @banner }
      else
        format.html { render :new }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @banner.destroy
    respond_to do |format|
      format.html { redirect_to admin_banners_url, notice: 'Banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_banner
      @banner = Banner.find(params[:id])
    end

    def banner_params
      params.require(:banner).permit(:position, image_attributes: [:id, :picture, :_destroy])
    end
end
