class SalesGroupsController < ApplicationController
  before_action :set_sales_group, only: [:show, :edit, :update, :destroy]

  # GET /sales_groups
  # GET /sales_groups.json
  def index
    @sales_groups = SalesGroup.all
  end

  # GET /sales_groups/1
  # GET /sales_groups/1.json
  def show
  end

  # GET /sales_groups/new
  def new
    @sales_group = SalesGroup.new
  end

  # GET /sales_groups/1/edit
  def edit
  end

  # POST /sales_groups
  # POST /sales_groups.json
  def create
    @sales_group = SalesGroup.new(sales_group_params)

    respond_to do |format|
      if @sales_group.save
        format.html { redirect_to @sales_group, notice: 'Sales group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_groups/1
  # PATCH/PUT /sales_groups/1.json
  def update
    respond_to do |format|
      if @sales_group.update(sales_group_params)
        format.html { redirect_to @sales_group, notice: 'Sales group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_groups/1
  # DELETE /sales_groups/1.json
  def destroy
    @sales_group.destroy
    respond_to do |format|
      format.html { redirect_to sales_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_group
      @sales_group = SalesGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_group_params
      params.require(:sales_group).permit(:desc)
    end
end
