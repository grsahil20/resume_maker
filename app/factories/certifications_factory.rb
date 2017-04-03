class CertificationsFactory
  def initialize(params:)
    @params = params
  end

  def build
    _attributes = {}
    @params.each do |key, params|
      _attributes[key.to_s] = certiication_attributes(params)
    end
    _attributes
  end

  def certiication_attributes(params)
    _params = {}
    _params.merge!(title: params[:title])
    _params.merge!(year: params[:year])
    _params
  end

end
