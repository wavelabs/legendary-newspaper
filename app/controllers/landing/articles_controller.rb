class Landing::ArticlesController < Landing::BaseController
  before_action :set_article, only: [:show]

  def index
    @decorated_articles = Article.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
    @top_banner = Banner.banner_top
  end

  def show
    @decorated_article = Landing::ArticlePresenter.new(@article, view_context)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit( :headline, :lead, :body, :section_id, :author_id )
    end
end
