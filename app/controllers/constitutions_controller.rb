class ConstitutionsController < ApplicationController
  before_action :set_constitution, only: [:show, :edit, :update, :destroy]

  # GET /constitutions
  # GET /constitutions.json
  def index
    @constitutions = Constitution.all
  end

  # GET /constitutions/1
  # GET /constitutions/1.json
  def show
  end

  # GET /constitutions/new
  def new
    @constitution = Constitution.new
  end

  # GET /constitutions/1/edit
  def edit
  end

  # POST /constitutions
  # POST /constitutions.json
  def create
    @constitution = Constitution.new(constitution_params)

    respond_to do |format|
      if @constitution.save
        format.html { redirect_to @constitution, notice: 'Constitution was successfully created.' }
        format.json { render action: 'show', status: :created, location: @constitution }
      else
        format.html { render action: 'new' }
        format.json { render json: @constitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constitutions/1
  # PATCH/PUT /constitutions/1.json
  def update
    respond_to do |format|
      if @constitution.update(constitution_params)
        format.html { redirect_to @constitution, notice: 'Constitution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @constitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constitutions/1
  # DELETE /constitutions/1.json
  def destroy
    @constitution.destroy
    respond_to do |format|
      format.html { redirect_to constitutions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constitution
      @constitution = Constitution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constitution_params
      params.require(:constitution).permit(:c_id, :name,:district_id)
    end
end
