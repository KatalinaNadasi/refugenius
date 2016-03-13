class EmploisController < ApplicationController

  def index
    @emploi = Emploi.all
  end

  def show
    @emploi = Emploi.find(params[:id])
  end

end
