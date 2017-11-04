module Editor::ArticleHelper
  def sections_for_select
    Section.all.collect {|s| [ s.name, s.id ] }
  end
end
