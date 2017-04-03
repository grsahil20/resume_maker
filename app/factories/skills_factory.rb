class SkillsFactory
  def initialize(params:)
    @params = params
  end

  def build
    _attributes = {}
    @params.each do |key, params|
      _attributes[key.to_s] = skill_attributes(params)
    end
    _attributes
  end

  def skill_attributes(params)
    _params = {}
    _params.merge!(title: params[:title])
    _params.merge!(exp_level: params[:exp_level])
    _params
  end

end
