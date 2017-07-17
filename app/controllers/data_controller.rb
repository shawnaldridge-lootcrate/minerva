require 'csv'

class DataController < ApplicationController
  protect_from_forgery except: :spawn_message

  def spawn_publisher
    @system_name = params[:system_name]
  end

  def spawn_subscriber
    @subscribing_system = params[:subscribing_system]
    @topic_name = params[:topic_name]
  end

  def spawn_message
    @topic_name = params[:topic_name]
    render 'spawn_message', format: :js
  end

end
