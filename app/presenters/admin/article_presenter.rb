class Admin::ArticlePresenter < Admin::BasePresenter
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

  def author_name
    @record.author ? @record.author_full_name : 'Anónimo'
  end

  def is_published?
    @record.published ? "Si" : "No"
  end
end