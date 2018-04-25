class Landing::HomeController < Landing::BaseController
  def index
    @decorated_articles = Article.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
    @sections = Section.with_articles
    @most_viewed =Article.approved.with_visualizations
  end

  def section
    @section = Section.friendly.find(params[:id])
    @section_articles = @section.articles.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
  end
end
