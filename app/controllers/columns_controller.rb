class ColumnsController < ApplicationController
  before_action :set_column, only: %i[ show edit update destroy ]

  # GET /columns or /columns.json
  def index
    @columns = Column.all
  end

  # GET /columns/1 or /columns/1.json
  def show
  end

  # GET /columns/new
  def new
    @column = Column.new
  end

  # GET /columns/1/edit
  def edit
  end

  # POST /columns or /columns.json
  def create
    @column = Column.new(column_params)

    respond_to do |format|
      if @column.save
        format.html { redirect_to column_url(@column), notice: "Column was successfully created." }
        format.json { render :show, status: :created, location: @column }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columns/1 or /columns/1.json
  def update
    respond_to do |format|
      if @column.update(column_params)
        format.html { redirect_to column_url(@column), notice: "Column was successfully updated." }
        format.json { render :show, status: :ok, location: @column }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columns/1 or /columns/1.json
  def destroy
    @column.destroy

    respond_to do |format|
      format.html { redirect_to columns_url, notice: "Column was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # For dynamic dropdown lists in intervention form
  def get_columns_by_battery
    @columns = Column.where("battery_id = ?", params[:battery_id])
    respond_to do |format|
      format.json { render :json => @columns }
    end
  end
  def column_search
    if params[:battery].present? && params[:battery].strip != ""
      @columns = Column.where("battery_id = ?", params[:battery])
    else
      @columns = Column.all
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_column
      @column = Column.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def column_params
      params.require(:column).permit(:type, :number_of_floors_served, :status, :information, :notes)
    end
end
