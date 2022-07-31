module Api 
    module V1 
        class PlayersController < ApplicationController   # Api::BaseController
            # class Player < ::Player
            #     def as_json(option = {})
            #         super.merge(released_on: released_at.to_date)
            #     end
            # end
         respond_to :json

         def index
            respond_with Player.all
         end

         def show
            respond_with Player.find(params[:id])
         end

         def create
            respond_with Player.find(params[:player])
         end

         def update
            respond_with Player.find(params[:id], params[:player])
         end

         def destroy
            respond_with Player.destroy(params[:id])
         end
        end
    end
end