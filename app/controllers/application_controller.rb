class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV["APP_USERNAME"], password: ENV["APP_PASSWORD"],
    except: [:index, :show]
end
