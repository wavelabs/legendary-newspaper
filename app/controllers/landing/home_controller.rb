class Landing::HomeController < Landing::BaseController
  def index
    @decorated_articles = Article.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
    @sections = Section.with_articles
  end

  def section
    @section = Section.find_by(name: params[:section_name])
    @section_articles = @section.articles.approved.by_section(params[:section_name]).collect { |article| Landing::ArticlePresenter.new(article, view_context) }
  end
end
