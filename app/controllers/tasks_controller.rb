class TasksController < ApplicationController


  before_action :set_task, only: [:show, :edit, :update, :destroy]


  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    if params[:type] == "incomplete"
      @tasks = @tasks.where(complete: false)
    elsif params[:type] == "complete"
      @tasks = @tasks.where(complete: true)
    end
    if params[:sort] == "description"
      @tasks = @tasks.order(:description)
    elsif params[:sort] == "date"
      @tasks = @tasks.order(:due_date)
    elsif params[:sort] == "complete"
      @tasks = @tasks.order(:complete)
    end

    # respond_to do |format|
    #   format.html
      # format.csv do
      #   headers['Content-Disposition'] = "attachment; filename=\"task-list\""
      #   headers['Content-Type'] ||= 'text/csv'
      # end
    # end
  end







  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description, :complete, :due_date)
    end
end
