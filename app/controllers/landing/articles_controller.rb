class Landing::ArticlesController < Landing::BaseController
  before_action :set_article, only: [:show]
  before_action :add_visualization, only: [:show]


  def show
    @decorated_article = Landing::ArticlePresenter.new(@article, view_context)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

	  def add_visualization
	    if @article.visualizations != nil
	      @article.visualizations += 1
	    else
	      @article.visualizations = 1
	    end
	  	@article.save!
	  end
end
