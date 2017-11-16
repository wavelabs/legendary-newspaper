class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  layout 'landing'

  def index
    @articles = Article.all
  end

  def show
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit( :headline, :lead, :body, :section_id, :author_id )
    end
end
