class LanguagesFactory
  def initialize(params:)
    @params = params
  end

  def build
    _attributes = {}
    @params.each do |key, params|
      _attributes[key.to_s] = language_attributes(params)
    end
    _attributes
  end

  def language_attributes(params)
    _params = {}
    _params.merge!(title: params[:title])
    _params
  end
end
