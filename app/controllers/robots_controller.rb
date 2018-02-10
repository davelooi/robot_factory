class RobotsController < ApplicationController
  require 'oj'
  def index
    # Build a batch of robots
    batch = Factory::Production.build_batch

    # return it as json
    render json: Oj.dump(batch.map { |robot| Serializer::Robot.new(robot).to_h })
  end
end
