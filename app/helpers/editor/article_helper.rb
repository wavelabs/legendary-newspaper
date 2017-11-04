module Editor::ArticleHelper
  def sections_for_select
    Section.all.collect {|s| [ s.name, s.id ] }
  end

  def authors_for_select
    Author.all.collect {|a| [ a.full_name, a.id ] }
  end
end
