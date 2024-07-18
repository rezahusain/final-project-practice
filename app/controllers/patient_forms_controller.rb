class PatientFormsController < ApplicationController
  before_action :set_patient_form, only: %i[ show edit update destroy ]

  # GET /patient_forms or /patient_forms.json
  def index
    @patient_forms = PatientForm.all
  end

  # GET /patient_forms/1 or /patient_forms/1.json
  def show
  end

  # GET /patient_forms/new
  def new
    @patient_form = PatientForm.new
  end

  # GET /patient_forms/1/edit
  def edit
  end

  # POST /patient_forms or /patient_forms.json
  def create
    @patient_form = PatientForm.new(patient_form_params)

    respond_to do |format|
      if @patient_form.save
        format.html { redirect_to patient_form_url(@patient_form), notice: "Patient form was successfully created." }
        format.json { render :show, status: :created, location: @patient_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_forms/1 or /patient_forms/1.json
  def update
    respond_to do |format|
      if @patient_form.update(patient_form_params)
        format.html { redirect_to patient_form_url(@patient_form), notice: "Patient form was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_forms/1 or /patient_forms/1.json
  def destroy
    @patient_form.destroy!

    respond_to do |format|
      format.html { redirect_to patient_forms_url, notice: "Patient form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_form
      @patient_form = PatientForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_form_params
      params.require(:patient_form).permit(:image, :body, :severity, :patient_id, :admin_id)
    end
end
