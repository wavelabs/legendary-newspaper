class Landing::BasePresenter < SimpleDelegator
  def initialize(record, view_context)
    super(record)
    @record = record
    @view_context = view_context
  end
  
  def view_context
    @view_context
  end
end
