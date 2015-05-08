class AppEnvsController < ActionController::Base

def show
  @app_env = AppEnv.friendly.find(params[:id])
  render json:  @app_env.options.to_json
end

end