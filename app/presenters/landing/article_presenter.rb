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

  def contributor
    if has_contributor?
      "<strong>Colaborador:</strong> #{@record.contributor }".html_safe
    end
  end

  def has_contributor?
    !@record.contributor.blank?
  end

  def source_url
    @record.source_url.html_safe if has_source_url?
  end

  def has_source_url?
    !@record.source_url.blank?
  end
end
