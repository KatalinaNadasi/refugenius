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
    @company = Company.find(params[:id])
    @emloi = Emploi.create(emploi_params)

    if @emploi.save
      redirect_to company_path(@company)
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
    params.require(:emploi).permit(:content)
  end
end
