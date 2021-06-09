class Note1sController < ApplicationController
  before_action :set_note1, only: %i[ show edit update destroy ]

  # GET /note1s or /note1s.json
  def index
    @note1s = Note1.all
  end

  # GET /note1s/1 or /note1s/1.json
  def show
  end

  # GET /note1s/new
  def new
    @note1 = Note1.new
  end

  # GET /note1s/1/edit
  def edit
  end

  # POST /note1s or /note1s.json
  def create
    @note1 = Note1.new(note1_params)

    respond_to do |format|
      if @note1.save
        format.html { redirect_to @note1, notice: "Note1 was successfully created." }
        format.json { render :show, status: :created, location: @note1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note1s/1 or /note1s/1.json
  def update
    respond_to do |format|
      if @note1.update(note1_params)
        format.html { redirect_to @note1, notice: "Note1 was successfully updated." }
        format.json { render :show, status: :ok, location: @note1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note1s/1 or /note1s/1.json
  def destroy
    @note1.destroy
    respond_to do |format|
      format.html { redirect_to note1s_url, notice: "Note1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note1
      @note1 = Note1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note1_params
      params.require(:note1).permit(:name, :age)
    end
end
