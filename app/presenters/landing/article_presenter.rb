class Landing::ArticlePresenter < Landing::BasePresenter
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
end
