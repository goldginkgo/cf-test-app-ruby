module Api::V1
  class ApiController < ApplicationController
    # GET /
    def index
      render plain: 'Hello World!'
    end

    # GET /v1/cf_envs
    def cf_envs
      render plain: ENV['VCAP_APPLICATION']
    end

    # GET /v1/app_name
    def app_name
      render plain: JSON.parse(ENV['VCAP_APPLICATION'])['application_name']
    end

    # GET /v1/space_name
    def space_name
      render plain: JSON.parse(ENV['VCAP_APPLICATION'])['space_name']
    end
  end
end
