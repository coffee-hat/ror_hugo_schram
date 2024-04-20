class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    private

    def authenticate_user!
        unless user_signed_in? || request.path == new_user_session_path
            redirect_to new_user_session_path, alert: "You need to sign in first."
        end
    end
end
