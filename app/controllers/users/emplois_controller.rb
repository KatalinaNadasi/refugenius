class Users::EmploisController < ApplicationController
  before_action :authenticate_user!

  def index
    @emploi = matching(current_user.skill)
  end

  def matching(refugee_skills)
  # Matches a refugee to his best offers, based on the intersection of his skills
  # with the skills required for the offer. Returns a list in decreasing order of
  # match in the format [match_coefficient, [company_attributes], [offer_attributes]]
    bestoffers = Array.new([])
    Emploi.all.each do |emploi|
      coefficient = (emploi.skill.split(", ") & refugee_skills.split(", ")).length
      bestoffers.push([coefficient, emploi.id, emploi.company_id])
    end

    bestoffers.sort! {|x,y| y[0]<=>x[0]}
    return bestoffers
  end

end
