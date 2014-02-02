class SalesRepsController < ApplicationController
  before_action :set_sales_rep, only: [:show, :edit, :update, :destroy]

  # GET /sales_reps
  # GET /sales_reps.json
  def index
    @sales_reps = SalesRep.all
  end

  # GET /sales_reps/1
  # GET /sales_reps/1.json
  def show
  end

  # GET /sales_reps/new
  def new
    @sales_rep = SalesRep.new
  end

  # GET /sales_reps/1/edit
  def edit
  end

  # POST /sales_reps
  # POST /sales_reps.json
  def create
    @sales_rep = SalesRep.new(sales_rep_params)

    respond_to do |format|
      if @sales_rep.save
        format.html { redirect_to @sales_rep, notice: 'Sales rep was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_rep }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_reps/1
  # PATCH/PUT /sales_reps/1.json
  def update
    respond_to do |format|
      if @sales_rep.update(sales_rep_params)
        format.html { redirect_to @sales_rep, notice: 'Sales rep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_reps/1
  # DELETE /sales_reps/1.json
  def destroy
    @sales_rep.destroy
    respond_to do |format|
      format.html { redirect_to sales_reps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_rep
      @sales_rep = SalesRep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_rep_params
      params.require(:sales_rep).permit(:sales_group_id, :fname, :lname)
    end
end
