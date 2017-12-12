class Admin::EditorsController < Admin::BaseController
  before_action :set_editor, only: [:show, :edit, :update, :destroy]

  def index
    @editors = Editor.all
  end

  def show
  end

  def new
    @editor = Editor.new
  end

  def edit
  end

  def create
    @editor = Editor.new(editor_params)

    respond_to do |format|
      if @editor.save
        format.html { redirect_to admin_editor_path(@editor), notice: 'Editor creado correctamente.' }
        format.json { render :show, status: :created, location: @editor }
      else
        format.html { render :new }
        format.json { render json: @editor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @editor.update(editor_params)
        format.html { redirect_to admin_editor_path(@editor), notice: 'Editor actualizado.' }
        format.json { render :show, status: :ok, location: @editor }
      else
        format.html { render :edit }
        format.json { render json: @editor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @editor.destroy
    respond_to do |format|
      format.html { redirect_to admin_editors_url, notice: 'Editor eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_editor
      @editor = Editor.find(params[:id])
    end

    def editor_params
      params.require(:editor).permit(:email, :password, :password_confirmation)
    end
end
