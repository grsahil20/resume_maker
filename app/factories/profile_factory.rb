class ProfileFactory

  def initialize(params:)
    @params = params
  end

  def build
    profile_params = {}
    profile_params.merge!(full_name: @params[:full_name])
    profile_params.merge!(email: @params[:email])
    profile_params.merge!(phone: @params[:phone])
    profile_params.merge!(linkedin_url: @params[:linkedin_url])
    profile_params.merge!(blog_url: @params[:blog_url])
  end
end
