class ApplicationController < ActionController::API
    def authorize_request
      header = request.headers['Authorization']
      token = header.split(' ').last if header.present?
      begin
        payload = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
        @current_user = User.find(payload['user_id'])
      rescue StandardError
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    end
  end