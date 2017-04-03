class ResumeFactory
  include ActiveModel::Validations

  attr_accessor :resume
  validate :validate_profile_params

  def initialize(params: )
    @params = params
    @resume = Resume.new
  end

  def build
    @resume_params = {}
    build_profile
    build_projects
    build_skills
    build_languages
    build_companies
    build_qualifications
    build_certifications
    build_resume
  end

  private

  def build_resume
    @resume  = Resume.new @resume_params
  end

  def build_profile
    _factory = ProfileFactory.new(params: @params[:profile])
    @resume_params[:profile_attributes] = _factory.build
  end

  def build_projects
    return unless @params[:projects].present?
    _factory = ProjectsFactory.new(params: @params[:projects])
    @resume_params[:projects_attributes] = _factory.build
  end

  def build_skills
    return unless @params[:skills].present?
    _factory = SkillsFactory.new(params: @params[:skills])
    @resume_params[:skills_attributes] = _factory.build
  end

  def build_languages
    return unless @params[:languages].present?
    _factory = LanguagesFactory.new(params: @params[:languages])
    @resume_params[:languages_attributes] = _factory.build
  end

  def build_companies
    return unless @params[:companies].present?
    _factory = CompaniesFactory.new(params: @params[:companies])
    @resume_params[:companies_attributes] = _factory.build
  end

  def build_qualifications
    return unless @params[:qualifications].present?
    _factory = QualificationsFactory.new(params: @params[:qualifications])
    @resume_params[:qualifications_attributes] = _factory.build
  end

  def build_certifications
    return unless @params[:certifications].present?
    _factory = CertificationsFactory.new(params: @params[:certifications])
    @resume_params[:certifications_attributes] = _factory.build
  end

  #----- validations
  def validate_profile_params
    return if @params[:profile].present?
    errors.add(:base, "Resume cannot be created without profile.")
  end
end
