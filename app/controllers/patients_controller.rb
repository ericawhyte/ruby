class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patient = Patient.all.order("created_at DESC")
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient, notice: "Successfully created new patient"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def destroy
    @patient.destroy
    redirect_to root_path, notice: "Successfully deleted patient"
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :middle_name, :last_name, :weight, :height, :mrn, encounters_attributes: [:id, :visit_number, :admitted_at, :discharged_at, :location, :room, :bed, :_destroy])
  end

  def find_patient
    @patient = Patient.find(params[:id])
  end
end
