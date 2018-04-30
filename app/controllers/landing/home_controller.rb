class Landing::HomeController < Landing::BaseController
  def index
    @decorated_articles = Article.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
    @sections = Section.with_articles
    @most_viewed =Article.approved.with_visualizations
    @carrousel_articles = Article.for_carrousel
  end

  def section
    begin
      @section = Section.friendly.find(params[:id])
      @section_articles = @section.articles.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
      
    rescue 
      render :file => "#{Rails.root}/public/404.html",  layout: true, status: :not_found   
    end    
  end
end
