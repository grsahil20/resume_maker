module Api
  class ResumesController < ApplicationController

    skip_before_action :verify_authenticity_token, only: [:create]

    def create
      factory = ResumeFactory.new(params: resume_params)
      if factory.valid?
        factory.build
        resume = factory.resume
        if resume.save
          render json:  resume.to_json
        else
          render json:  resume.errors
        end
      else
        render json:  factory.errors
      end
    end

    private

    def resume_params
      params.require(:resume).permit(
        profile: [:full_name, :email, :phone],
        projects: [:title, :description, :url, :start_date, :end_date],
        skills: [:title, :exp_level],
        languages: [:title],
        companies: [:title, :description, :url, :start_date, :end_date],
        qualifications: [:title, :start_date, :end_date],
        certifications: [:title],
      )
    end
  end
end
