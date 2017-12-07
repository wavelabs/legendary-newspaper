class Landing::HomeController < Landing::BaseController
  def index
    @decorated_articles = Article.approved.collect { |article| Landing::ArticlePresenter.new(article, view_context) }
    @top_banner = Banner.by_position("top").last
    @banner_right_first = Banner.by_position("right_first").last
    @banner_right_second = Banner.by_position("right_second").last
    @section = Section.all
    Section.all.each do |section|
      articles = Article.by_section(section.name)
      instance_variable_set("@#{section.name.downcase}_articles", articles)
      # este each va a crear variables de instancia por cada nombre de seccion
      # Ejemplo Secciones Deportes, Sociedad, se crean @deportes_articles, @sociedad_articles
      # borrar este bloque cuando lo entiendas
    end
  end

  def section
    @section_articles = Article.approved.by_section(params[:section_name]).collect { |article| Landing::ArticlePresenter.new(article, view_context) }
  end
end
