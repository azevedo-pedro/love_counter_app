class RelationshipsController < ApplicationController
  before_action :set_relationship, only: %i[ show edit update destroy ]

  # GET /relationships or /relationships.json
  def index
    @relationships = Relationship.all
  end

  # GET /relationships/1 or /relationships/1.json
  def show
  end

  # GET /relationships/new
  def new
    @relationship = Relationship.new
  end

  # GET /relationships/1/edit
  def edit
  end

  # POST /relationships or /relationships.json
  def create
    @relationship = Relationship.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to @relationship, notice: "Relationship was successfully created." }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationships/1 or /relationships/1.json
  def update
    respond_to do |format|
      if @relationship.update(relationship_params)
        format.html { redirect_to @relationship, notice: "Relationship was successfully updated." }
        format.json { render :show, status: :ok, location: @relationship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationships/1 or /relationships/1.json
  def destroy
    @relationship.destroy!

    respond_to do |format|
      format.html { redirect_to relationships_path, status: :see_other, notice: "Relationship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationship
      @relationship = Relationship.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def relationship_params
      params.expect(relationship: [ :start_date, :user_id ])
    end
end
