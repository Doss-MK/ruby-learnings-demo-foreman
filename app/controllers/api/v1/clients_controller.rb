class Api::V1::ClientsController < ApplicationController
    def get_clients
        @clients = Client.all
        render json: @clients, only: [:id, :first_name, :last_name, :email, :country], status: :ok
    end
end
