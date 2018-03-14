class TodoItem25sController < ApplicationController
  before_action :set_todo_item25, only: [:show, :edit, :update, :destroy]

  # GET /todo_item25s
  # GET /todo_item25s.json
  def index
    @todo_item25s = TodoItem25.all
  end

  # GET /todo_item25s/1
  # GET /todo_item25s/1.json
  def show
  end

  # GET /todo_item25s/new
  def new
    @todo_item25 = TodoItem25.new
  end

  # GET /todo_item25s/1/edit
  def edit
  end

  # POST /todo_item25s
  # POST /todo_item25s.json
  def create
    @todo_item25 = TodoItem25.new(todo_item25_params)

    respond_to do |format|
      if @todo_item25.save
        format.html { redirect_to @todo_item25, notice: 'Todo item25 was successfully created.' }
        format.json { render :show, status: :created, location: @todo_item25 }
      else
        format.html { render :new }
        format.json { render json: @todo_item25.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_item25s/1
  # PATCH/PUT /todo_item25s/1.json
  def update
    respond_to do |format|
      if @todo_item25.update(todo_item25_params)
        format.html { redirect_to @todo_item25, notice: 'Todo item25 was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_item25 }
      else
        format.html { render :edit }
        format.json { render json: @todo_item25.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_item25s/1
  # DELETE /todo_item25s/1.json
  def destroy
    @todo_item25.destroy
    respond_to do |format|
      format.html { redirect_to todo_item25s_url, notice: 'Todo item25 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_item25
      @todo_item25 = TodoItem25.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_item25_params
      params.require(:todo_item25).permit(:description)
    end
end
