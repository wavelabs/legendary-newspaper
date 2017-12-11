class Editor::ArticlePresenter < Editor::BasePresenter
  def body
    @record.body.html_safe
  end

  def lead
    @record.lead
  end

  def headline
    @record.headline    
  end

  def section_name
    @record.section_name
  end

  def contributor
    @record.contributor if @record.contributor
  end

  def source_url
    @record.source_url.html_safe
  end

  def is_published?
    @record.published ? "Si" : "No"
  end
end