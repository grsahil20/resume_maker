class CompaniesFactory
  def initialize(params:)
    @params = params
  end

  def build
    _attributes = {}
    @params.each do |key, params|
      _attributes[key.to_s] = company_attributes(params)
    end
    _attributes
  end

  def company_attributes(params)
    _params = {}
    _params.merge!(title: params[:title])
    _params.merge!(description: params[:description])
    _params.merge!(url: params[:url])
    _params.merge!(start_date: Date.parse(params[:start_date])) if params[:start_date].present?
    _params.merge!(end_date: Date.parse(params[:end_date])) if params[:end_date].present?
    _params
  end

end
