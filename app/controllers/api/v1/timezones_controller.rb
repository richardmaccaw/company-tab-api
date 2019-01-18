class Api::V1::TimezonesController < ApplicationController

    def index
        @timezones = Timezone.all
        render json: @timezones
    end

    def create
    end

    def timezone_params
        params.require(:timezone).permit(:zone, :name, :company_id, :id)
    end

end
