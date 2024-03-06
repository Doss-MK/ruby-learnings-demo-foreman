class SearchController < ApplicationController

    def search
        @results = Notification.search(params[:search])
        @results = Notification.search("*") if params[:search].blank?

        render turbo_stream:
            turbo_stream.update("notifications", partial: "notifications/notifications", locals: {
                notifications: @results
            })
    end

end