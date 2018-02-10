class RobotsController < ApplicationController
  require 'oj'

  def index
    # Build a batch of robots
    batch = Services::RobotFactory.build_batch

    # return it as json
    render json: Oj.dump(batch.map { |robot| Serializer::Robot.new(robot).to_h })
  end
end
