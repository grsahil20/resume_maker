class ResumesController < ApplicationController

  def index
    @resumes = Resume.page(params[:page])
  end

  def show
    @resume  = Resume.find_by_id params[:id]
  end
end
