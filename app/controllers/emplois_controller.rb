class EmploisController < ApplicationController

  def index
    @emploi = Emploi.all
  end

  def show
    @emploi = Emploi.find(params[:id])
  end

  private

  def emploi_params
    params.require(:emploi).permit(:content)
  end
end
