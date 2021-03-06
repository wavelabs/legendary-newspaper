class Admin::ArticlesController < Admin::BaseController
  before_action :set_article, only: [ :edit, :update, :destroy]

  def index
    @decorated_articles = Article.all.collect { |article| Admin::ArticlePresenter.new(article, view_context) }
  end

  def edit
    @decorated_article = Admin::ArticlePresenter.new(@article, view_context)
  end

  def new
    @article = Article.new
    @article.images.build
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_articles_path, notice: 'Articulo creado correctamente.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to admin_articles_path, notice: 'Articulo actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: 'Articulo eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(
        :headline, :lead, :body, :section_id, :published, :contributor, :source_url,
        :for_carrousel, images_attributes: [ :id, :picture, :description, :_destroy ] )
    end
end
