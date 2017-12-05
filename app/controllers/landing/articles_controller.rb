class Landing::ArticlesController < Landing::BaseController
  before_action :set_article, only: [:show]

  def show
    @decorated_article = Landing::ArticlePresenter.new(@article, view_context)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end
end
