class Companies::EmploisController < ApplicationController
  before_action :authenticate_company!

  def index
    @emploi = current_company.emplois
  end

  def show
    @emploi = Emploi.find(params[:id])
  end

  def new
    @emploi = Emploi.new
  end

  def create
    @emploi = current_company.emplois.build(emploi_params)
    @emploi.save

    if @emploi.save
      redirect_to company_path(@emploi.company.id)
    else
      redirect :back
    end
  end

  def destroy
    @emploi = Emploi.find(params[:id])
    @emploi.destroy
  end

  private

  def emploi_params
    params.require(:emploi).permit(:name, :domain, :skill, :language, :description, :localisation)
  end
end
