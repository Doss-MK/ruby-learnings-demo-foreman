class SimpleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.info "This is simple job perform log"
  end
end
