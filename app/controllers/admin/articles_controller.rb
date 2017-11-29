class Admin::ArticlesController < Admin::BaseController
  before_action :set_article, only: [ :edit, :update, :destroy]

  def index
    @decorated_articles = Article.all.collect { |article| Admin::ArticlePresenter.new(article, view_context) }
  end

  def new
    @article = Article.new
    @article.images.build unless @article.images
  end

  def edit
    @decorated_article = Admin::ArticlePresenter.new(@article, view_context)
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully created.' }
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
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully updated.' }
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
      format.html { redirect_to admin_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit( :headline, :lead, :body, :section_id, :author_id, :published , images_attributes: [:id, :picture, :_destroy])
    end
end
